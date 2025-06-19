# session02
**Extracted from chunk:** chunk_07.log

**ID of first query in session:** 640903854

**number of queries:** 7

**query evolution description:**

Throughout the session, the initial query is extended further, step by step. In the first step (i.e., second query), by adding another result column (with a corresponding extension in the WHERE clause). In the second step (i.e., third query), by changing the variable in the ORDER BY clause. Thereafter, by further extending the aggregation functions for the previously added result column (fourth query), by adding yet another result column of the same form as the previously extended one (fifth query), by switching the order of the result columns (sixth query), and finally by changing the main triple pattern into a property path pattern (seventh query).

**user story:**

The user wanted to retrieve a list of all free software, including information about operating systems and licenses of each such software, but with the explicit desire to have only one result row per every such software. Considering the language features that are used here, the user was certainly a SPARQL expert.
The initial query is already comparably sophisticated; in particular, the query uses the COALESCE function to capture the preference for retrieving the English-language label for the free software instance that have one and the SAMPLE function to, otherwise, retrieve a random other-language label. It is also noteworthy that the query already contains an OPTIONAL pattern to retrieve the operating systems (if any) and another OPTIONAL pattern to retrieve the licenses (if any), but the query variables bound in these OPTIONAL patterns are not yet used anywhere else in the query.
After running the initial query, the user starts extending and modifying the query step by step, as described in the "query evolution description" above.
An interesting step in this process is the change from the third to the fourth version of the query where the user modifies the definition of the third result column. Here, the user changes the SAMPLE function into a GROUP_CONCAT in order to obtain concatenated strings of all operating systems per software, rather than just a random one.
Another interesting step is the change from the fifth to the sixth column where the user switches the order of the result columns. Apparently, at this point, the user seems to have changed their mind and does not want to see the labels of the software in the first column, but the corresponding URIs.
Also the last step is noteworthy: Up to this point, the user has made sure that the query result is presented in a form that they like, and now they change the WHERE clause to retrieve not only everything that is a direct instance of the type 'free software' but also everything that is an instance of a subclass of his type. To this end, the user has replaced the triple pattern that retrieves the instances of type 'free software' by a property path pattern with a transitive path expression.

**query01**

Instances of type 'free software', with one result row per every such instance.
In addition to the URI for the corresponding free software, the result row should contain a label of this software, with a preference for an English-language label (and otherwise one version of the label in any other language).
The query also contain an OPTIONAL pattern to retrieve the operating system of the software and another OPTIONAL pattern to retrieve the license of the software, but the query variables for these extra things are not used anywhere else in the query (in particular, not in the SELECT clause). It appear that the user has already added them here but makes use of them only in later versions of the query (i.e., later in the session).

**query02**

This query extends the previous one by, now, also requesting (and projecting) an English-language label of the operating system of each of the instances of type 'free software'.

**query03**

Like the previous query, only with a different variable in the ORDER BY clause.

**query04**

Like  the previous query, only with GROUP_CONCAT instead of SAMPLE for the third result column.

**query05**

This query extends the previous one by, now, also requesting (and projecting) a concatenated string of the English-language labels of the licenses of each of the instances of type 'free software'.

**query06**

Like the previous query, only with a different order of the result columns (the one with the URIs of the 'free software' instances is now moved to be the first).

**query07**

In contrast to the previous query, the triple pattern that retrieves the instances of type 'free software' is now replaced by a property path pattern that also retrieves instances of subclasses of the 'free software' type.
