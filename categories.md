# Categorization of the Sessions
By an initial analysis and comparison of the sessions in this collection, we observe that these sessions---and, thus, exploratory querying behavior in general---can be grouped into different categories. In particular, we identify the following six categories based on our collection of sessions. We emphasize that these categories are not mutually exclusive; some sessions fit into multiple categories. We also emphasize that these categories are not necessarily exhaustive; there may be more categories, which are not evident from the sessions in our collection.

## Category 1 - Result Refinement
During sessions within this category, the user modifies their query to limit the answers (rows) of the query result more and more. Typical query modifications in such sessions include the addition of further conditions, captured via FILTER expressions or via filtering triple patterns.

A typical example of a session in this category is [session14](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session14) in which the initial query retrieves science fiction authors and their respective place of birth; the subsequent queries are then becoming increasingly more restrictive regarding the selected authors (first, restricted to retrieve only authors born in the United Kingdom; thereafter, restricted further to filter out authors who were born before 1900).

The complete list of sessions that fit into this category is:
[session01](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session01),
[session05](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session05),
[session06](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session06),
[session07](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session07),
[session14](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session14),
[session16](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session16),
[session17](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session17),
[session18](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session18),
[session20](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session20),
[session22](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session22),
[session23](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session23),
[session25](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session25),
[session26](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session26),
[session27](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session27), and
[session28](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session28).

## Category 2 - Result Generalization
In sessions of this category, the user makes their query increasingly more general to retrieve additional entities in the result set, which is essentially the opposite of the previous category. Typical changes to the query within a result-generalization session are the inclusion of superclasses in the query pattern and an increase of the value of the LIMIT clause.

A typical example of a session in this category is **TODO ..**

The complete list of sessions that fit into this category is:
[session01](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session01),
[session07](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session07),
[session13](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session13),
[session15](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session15),
[session16](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session16),
[session17](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session17),
[session18](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session18),
[session20](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session20),
[session21](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session21),
[session22](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session22),
[session26](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session26), and
[session28](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session28).

## Category 3 - Result Extension
Within such a session, the user expands their query in order to extend the query result with additional attributes of the selected entities. To this end, the user typically adds more triple patterns with predicates that correspond to the additional attributes and variables in the object position.

A typical example of a session in this category is **TODO ..**

The complete list of sessions that fit into this category is:
[session02](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session02),
[session05](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session05),
[session13](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session13), and
[session16](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session16).

## Category 4 - Query Refinement
In such sessions, the user seems to have a specific query intent in mind from the beginning and starts with an initial query that goes into the direction of this intent. Then, throughout the session, the user works on this query to align it more accurately with their intent. In contrast to result-refinement sessions (category 1), query-refinement sessions are not about simply restricting the result set (not only, at least), and also not about simply adding further properties to be retrieved for selected entities (as done in the result-extension sessions, category 3), but involve adding and tinkering with more complicated query features.

A typical example of a session in this category is **TODO ..**

The complete list of sessions that fit into this category is:
[session04](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session04),
[session06](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session06),
[session08](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session08),
[session09](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session09),
[session11](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session11),
[session12](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session12), and
[session29](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session29).

## Category 5 - Bug Fixing
These are sessions in which the user starts with an incorrect query (e.g., containing incorrectly written URIs or incorrectly used features of the query language) and fixes the issues of this query throughout the session.

A typical example of a session in this category is **TODO ..**

The complete list of sessions that fit into this category is:
[session01](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session01),
[session03](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session03),
[session10](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session10),
[session24](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session24),
[session30](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session30),

## Category 6 - Shifting Query Intent
The query intent shifts to different but related topics throughout such a session. Typical changes to the queries in such sessions include adapting values used for filtering, changing the predicate or the class URIs mentioned in the query pattern, and also adding or dropping whole parts of the query.

A typical example of a session in this category is **TODO ..**

The complete list of sessions that fit into this category is:
[session09](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session09),
[session11](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session11),
[session12](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session12),
[session19](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session19),
[session23](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session23),
[session26](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session26), and
[session28](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session28).
