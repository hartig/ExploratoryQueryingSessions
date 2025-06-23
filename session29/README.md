# session29
**Extracted from chunk:** chunk_05.log

**ID of first query in session:** 907832533

**number of queries:** 13

**query evolution description:**

While the core of the query remains the same throughout the session, the user repeatedly adds and removes FILTER clauses to restrict the predicate of the second triple pattern, switches the direction of the second triple pattern, and removes and then adds back the label-related variables from the SELECT clause.

**user story:**

The ultimate goal seems to be to obtain the academic ancestry of Leonard Euler, including other supervisors of every student at every level. Given that Wikidata has a relationship for "student" and another one for "student of", the user plays around with variations of the query that use one or the other of these relationships for the other teachers. I assume that was to see whether the results would look different. The final query of the session settles on one of the two relationships and then also asks for other types of relationships between the teachers and students.

**query01**

Euler's students, and recursively their students, as well as any other teacher of each such student

**query02**

Euler's students, and recursively their students, as well as every triple about each such student (i.e., removes the filter from the previous query)

**query03**

Euler's students, and recursively their students, as well as everyone who was a student of each of such student

**query04**

Back to query02

**query05**

Euler's students, and recursively their students, as well as everyone who was a student of each of such student (using the reverse relationship compared to query03)

**query06**

Back to query02

**query07**

Same as the previous query but without asking for the label variables in the SELECT clause.

**query08**

Back to query05, but without the label variables in the SELECT clause.

**query09**

Euler's students, and recursively their students, as well as any other teacher of each such student (using the reverse relationship compared to query01), and without the label variables in the SELECT clause.

**query10**

Same as query09, but with the label variable for the teachers added back again.

**query11**

Same as query10, but now also with the label variable for the students added back again.

**query12**

Same as query11, but now two times the same condition in the WHERE clause.

**query13**

Extension of query11, asking additionally every relationship between the teachers and students.
