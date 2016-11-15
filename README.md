# Elixir-MapReduce
Multiprocessed MapReduce Implementation in Elixir
<hr>
This is a MapReduce implementation takes advantage of Erlang processes to optimize the problem of counting the amount of words
in a piece of text.<br>
Run with:<br>
```
elixir mapreduce.ex
```
Example Output:
```
[linux@dimension elixir]$ elixir mapreduce.ex 
[Mapped]: Data Received -> %{"feathers" => 1, "hope" => 1, "is" => 1, "the" => 1, "thing" => 1, "with" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"in" => 1, "perches" => 1, "soul" => 1, "that" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"all" => 1, "and" => 1, "at" => 1, "never" => 1, "stops" => 1}
[Reduced]: Subsection reduced.
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"and" => 1, "sings" => 1, "the" => 2, "tune" => 1, "without" => 1, "words" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"and" => 1, "be" => 1, "must" => 1, "sore" => 1, "storm" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"and" => 1, "gale" => 1, "heard" => 1, "in" => 1, "is" => 1, "sweetest" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"abash" => 1, "bird" => 1, "could" => 1, "little" => 1, "that" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"keeps" => 1, "many" => 1, "so" => 1, "that" => 1, "warm" => 1}
[Reduced]: Subsection reduced.
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"and" => 1, "on" => 1, "sea" => 1, "strangest" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"Ive" => 1, "chillest" => 1, "heard" => 1, "in" => 1, "it" => 1, "land" => 1, "the" => 1}
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"extremity" => 1, "in" => 1, "never" => 1, "yet" => 1}
[Reduced]: Subsection reduced.
[Reduced]: Subsection reduced.
[Mapped]: Data Received -> %{"a" => 1, "asked" => 1, "crumb" => 1, "it" => 1, "me" => 1, "of" => 1}
[Reduced]: Subsection reduced.
Queue has been consumed
[Map Reduce]: Completed. Showing result..
%{"abash" => 1, "bird" => 1, "that" => 3, "soul" => 1, "a" => 1, "never" => 2, "chillest" => 1, "stops" => 1, "perches" => 1, "crumb" => 1, "many" => 1, "extremity" => 1, "sea" => 1, "land" => 1, "strangest" => 1, "on" => 1, "words" => 1, "sore" => 1, "yet" => 1, 
"with" => 1, "storm" => 1, "thing" => 1, "the" => 9, "all" => 1, "tune" => 1, "sings" => 1, "keeps" => 1, "sweetest" => 1, "could" => 1, "and" => 5, "so" => 1, "heard" => 2, "me" => 1, "at" => 1, "of" => 1, "little" => 1, "without" => 1, "Ive" => 1, "in" => 4, "it" 
=> 2, "hope" => 1, "be" => 1, "warm" => 1, "asked" => 1, "is" => 2, "feathers" => 1, "must" => 1, "gale" => 1}
```
