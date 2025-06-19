# session03
**Extracted from chunk:** chunk_07.log

**ID of first query in session:** 623213766

**number of queries:** 4

**query evolution description:**

The query changes only in terms of the predicate URI used in the main triple pattern. In particular, this predicate URI in the second query is an incorrect variation of the URI used in the first query. The third query is exactly the same wrong version as the second query, and the fourth one is identical to the (correct) first one again.

**user story:**

The user started with a query to retrieve things that are of type human, limited to 50 result rows. The query additionally contains an OPTIONAL clause but this is somewhat useless as the query variable to be bound in this part is not used anywhere else (in particular not in the SELECT clause).
After running this query, the user (accidentally?) replaced the predicate URI of the main triple pattern of the query with a wrong variation of the correct URI used in the initial query, and tried this query twice (obtaining the empty result in both cases).
After these two unsuccessful query attempts, the user went be to the original query and issued that one again.

**query01**

50 items that are instance of human and, optionally, English-language labels for them.
The labels are not actually projected, which makes it somewhat useless to request them at all.

**query02**

Same as above but with a wrong URI for the "instance of" predicate.

**query03**

Same query again (with the wrong URI for the "instance of" predicate).

**query04**

The first query again.
