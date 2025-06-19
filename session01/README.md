# session01
**Extracted from chunk:** chunk_07.log

**ID of first query in session:** 622979812

**number of queries:** 5

**query evolution description:**

The query is essentially the same throughout the session, but with minor modifications. While the first version has a wrong predicate URI, the second version fixes this issue. The third version then adds a LIMIT clause with a value of 100k. In the fourth version, the value of the LIMIT clause is increased to 1M, and then reduced to 500k in the fifth version.

**user story:**

The user wanted to retrieve the URIs of things that are of type human.
Initially, they used the wrong predicate URI for "instance of" (wrong namespace).
After fixing this issue in the second query, the user added a LIMIT clause in the third query. The time between issuing the second and issuing the third query is almost 5 mins. It can be assumed that either the second query (i.e., the one without LIMIT) timed out or, after waiting for a couple of minutes, the user became impatient and terminated the query. In any case, issuing the query again, but now with a LIMIT clause, means the user didn't want to give up and, instead, check whether the LIMIT would help to reduce the query execution time and to retrieve at least some instances of type human.
Given that the value of the LIMIT clause after the third query was increased to 1M for the fourth query can be interpreted as a sign that adding the LIMIT clause to the third query had the desired effect (i.e., the execution of that query completed) and now the user wanted to see whether they can retrieve a greater number of instances of type human.
For the fifth query, the user decreased the value of the LIMIT clause again, down to 500k. The time between issuing the fourth and issuing the fifth query is a bit less than 2 mins. This can be interpreted as a sign that the user became impatient again and, thus, terminated the fourth query, but then still didn't want to give up and, thus, tried to retrieve at least 500k instances of type human.
Another thing to observe is that all versions of the query contain an OPTIONAL clause that is somewhat useless because the query variable to be bound in this part is not used anywhere else (in particular not in the SELECT clause). In is not clear why this OPTIONAL clause is used; perhaps it was copied from an example query. The presence of this clause shows, however, that the user was probably not very familiar with SPARQL because, otherwise, they would have removed this clause, at the latest when they tried to reduce the execution time of the query.
