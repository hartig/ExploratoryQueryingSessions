# session10
**Extracted from chunk:** chunk_09.log

**ID of first query in session:** 575904962

**number of queries:** 9

**query evolution description:**

The initial query is a complex query with aggregations, optionals, filters, group by, and returns nothing. Iteratively, a line of the query is removed until it returns an answer. Then, a condition is added again, aggregation is dropped, and the session ends.

**user story:**

The user wants to find information about Spanish or Mexican cuisine. The sequence starts with an overly constrained complex query (asking for instances of Spanish cuisine whose gender is female and ...), from which conditions are subsequently removed until the query returns something. Then, the focus is switched from Spanish cuisine to mexican food. After removing some more side-conditions, the last query in the sequence returns 50 results that are subclass of Mexican food.

**query01**

The user searches for instances of (P31) Spanish cuisine (Q622512) which is an instance of food, whose gender is female, together with other side conditions, like date of birth. The query seems unsensible. (No result.)

**query02**

The condition of female gender is dropped. The query still seems unsensible, because instances of Spanish cuisine don't have a birthdate. (No result.)

**query03**

A constraint on the birthdate (being > 1970) is dropped. (No result.)

**query04**

The constraint of being an instance of food is dropped. (No result. The user is still asking for items in Spanish cuisine that have a birthdate.)

**query05**

The user notices that the condition of "being an instance of Spanish cuisine" is asked twice. One occurrence is removed. (No result.)

**query06**

The requirement of having a birthdate is removed. Now the query returns "Desserts of Spain" (http://www.wikidata.org/entity/Q2898913), with a count of 2. (The number of schema.org entries about the entity we're searching for.)

**query07**

The condition of being "instance of" "Spanish cuisine" is replaced by 
          - being "subclass of" (P279) "food" (https://www.wikidata.org/wiki/Q2095) and 
          - having "country of origin" (P495) "Mexico"
Now we have 2 results, Jumiles (https://www.wikidata.org/wiki/Q3189940) and chocolate sandwich (https://www.wikidata.org/wiki/Q5103667), with counts.

**query08**

Aggregation over schema.org/about is dropped, which adds one result (but now we don't have the counts anymore).

**query09**

The condition of the food coming from Mexico is dropped, which gives a list of 50 results (the query has a LIMIT 50).
