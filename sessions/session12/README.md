# session12
**Extracted from chunk:** chunk_09.log

**ID of first query in session:** 457703399

**number of queries**: 3

**query evolution description:**

The first query returns no result, the second one changes one edge relation to something else, but times out, the third changes two edge relations again, and finally returns a result.

**user story:**

**query01**

Searches for web pages (https://www.wikidata.org/wiki/Q36774) whose CEO (P169) is human  (http://www.wikidata.org/entity/Q5) and has an outgoing educated-at (P69) edge. No results.

**query02**

Changes "CEO" with "Founded by" (P112) and limits the number of results from 100 to 10. Query times out.

**query03**

Changes "Founded by" back to "CEO", replaces educated-at with "student of" (P1066), and "web page" with "business" (https://www.wikidata.org/wiki/Q4830453). Now the query asks for 10 persons whose students are CEOs of businesses; and returns the count of these students. We learn that, e.g., 3 of Dana Angluin's students are CEO of a business.
