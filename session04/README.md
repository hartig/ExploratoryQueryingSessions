# session04
**Extracted from chunk:** chunk_08.log

**ID of first query in session:** 409098207

**number of queries:** 7

**query evolution description:**

The query is essentially the same throughout the session, but with minor modifications. 
It extracts metadata about programming languages from Wikidata, including their name, superclass, implementations, and licenses.

**user story:**

The initial query is already quite big.
It is simplified (dropping the ORDER BY), the new version is shorter and leaner.
Then the ORDER BY is re-added. The WHERE-condition is refined, from "free software" to "software". Later, ther ORDER BY is again dropped and re-added.
Finally, the order of predicates on P275 and P306 is swapped.

**query01**

This SPARQL query is extracting metadata about programming languages from Wikidata, including their name, superclass, implementations, and licenses.

**query02**

The new version is cleaner and shorter, but loses robustness in edge cases. In particular, the ORDER BY is dropped.

**query03**

Again adding ORDER BY.

**query04**

Changes WHERE-condition from "free software" to "software", i.e. https://www.wikidata.org/wiki/Q7397.

**query05**

Now dropping the ORDER BY

**query06**

Re-adding ORDER-BY, asking about "free software" again.

**query07**

Swaps the order of P275 and P306 compared to previous queries.
