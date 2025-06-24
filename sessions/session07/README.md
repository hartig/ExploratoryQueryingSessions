# session07
**Extracted from chunk:** chunk_08.log

**ID of first query in session:** 705613812

**number of queries:** 4

**query evolution description:**

**user story:**

The query retrieves entities that are roads or subclasses of roads, along with optional information about their start and end points, and their labels in French or English.
Initially, the query runs into a timeout. A query predicate is incrementally refined, and further languages are added. 

**query01**

Retrieves entities that are roads or subclasses of roads, along with optional information about their start and end points, and their labels in French or English. The first version of the query times out.

**query02**

The requirement that a road has a start point is no longer optional. Now, the query returns results!

**query03**

Now, there is an optional requirement that a road has a "terminus location".

**query04**

In the final version, several more languages are included.
