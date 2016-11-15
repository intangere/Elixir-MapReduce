defmodule MapReducer do
	
	def doMap(index, count_map, line) do
		word = Enum.at(line, index)
		if index < Enum.count(line) do
			if Map.has_key?(count_map, word) do
				count_map = Map.put(count_map, word, count_map[word] + 1)
			else 
				count_map = Map.put(count_map, word, 1)
			end
			doMap(index + 1, count_map, line)
		else
			count_map
		end
	end

	def doReduce(reduced_count_map, count_map) do
		Map.merge(count_map, reduced_count_map, fn _k, v1, v2 -> v1 + v2 end)
	end

	def spawnProcesses(lines) do
		master = self()
		for line <- lines do
			spawn fn ->
				count_map = doMap(0, %{}, String.split(String.strip(line)))
				send master, {:value, count_map}
			end
		end
	end

	def collectMapAndReduce(summed_words) do
		receive do
            {:value, count_map} -> if Enum.count(count_map) > 0 do IO.puts "[Mapped]: Data Received -> #{inspect count_map}" end
            reduced_count_map = doReduce(summed_words, count_map)
            IO.puts("[Reduced]: Subsection reduced.")
            collectMapAndReduce(reduced_count_map)
        after 1_000 ->
        	IO.puts "Queue has been consumed"
        	IO.puts("[Map Reduce]: Completed. Showing result..")
        	IO.puts("#{inspect summed_words}")
        end
	end
end

text = String.split("""
hope is the thing with feathers 
that perches in the soul 
and sings the tune without the words 
and never stops at all 

and sweetest in the gale is heard 
and sore must be the storm 
that could abash the little bird 
that keeps so many warm 

Ive heard it in the chillest land 
and on the strangest sea 
yet never in extremity 
it asked a crumb of me
""", "\n")

MapReducer.spawnProcesses(text)
MapReducer.collectMapAndReduce(%{})