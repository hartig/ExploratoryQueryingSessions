# session25
**Extracted from chunk:** chunk_02.log

**ID of first query in session:** 660741885

**number of queries:** 5

**query evolution description:**

First query times out.
Second query user adds limit 200. Query times out.
Third query user adds additional language options (de,nl,fr,es) for labels. Query times out.
Fourth query user adds more language options (pl,ru,bg) for labels. Query times out.
Fifth query user removes SAMPLE from the SELECT clause. Query returns results.

**user story:**

This user is looking for people who have been named after other people, and counts of how many. The user gets a message from the query service that the first query times out. The user adds limit to reduce the number of results returned and to see if that will allow the query to execute within the limit of 60 seconds. The user adds additional language options for the labels of the names (this will likely increase the number of results). The user removes the SAMPLE from the SELECT clause which allows the query to return within the limit.
