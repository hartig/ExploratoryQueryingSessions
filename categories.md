# Categorization of the Sessions
By an initial analysis and comparison of the sessions in our collection, we have observed that these sessions can be grouped into different categories. In particular, we have identified six categories:
* [Category 1 - Result Refinement](#category-1---result-refinement)
* [Category 2 - Result Generalization](#category-2---result-generalization)
* [Category 3 - Result Extension](#category-3---result-extension)
* [Category 4 - Query Refinement](#category-4---query-refinement)
* [Category 5 - Bug Fixing](#category-5---bug-fixing)
* [Category 6 - Shifting Query Intent](#category-6---shifting-query-intent)

We emphasize that these categories are not mutually exclusive; some sessions fit into multiple categories. We also emphasize that these categories are not necessarily exhaustive; there may be more categories that are not evident from the sessions in our collection.

In the following, we describe each of the six categories and list the sessions of each of them. For a more software-friendly representation of this categorization of the sessions, refer to the [sessions_and_categories.csv](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/sessions_and_categories.csv) file.

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

A typical example of a session in this category is [session15](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session15) in which the user works on a query to retrieve instances of automobile models (such as Audi A8), the parent classes that they are a subclass of, and the superclasses of these parent classes. Throughout the session, the retrieval of the superclasses and, then, also of the parent classes is made optional in order to retrieve additional automobile models that do not have parent or grandparent classes in Wikidata.

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

A example of a session in this category is [session05](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session05) in which the initial query for islands is later extended to also retrieve the administrative territorial entities (country, province, etc.) in which the islands are located.

The complete list of sessions that fit into this category is:
[session02](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session02),
[session05](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session05),
[session13](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session13), and
[session16](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session16).

## Category 4 - Query Refinement
In such sessions, the user seems to have a specific query intent in mind from the beginning and starts with an initial query that goes into the direction of this intent. Then, throughout the session, the user works on this query to align it more accurately with their intent. In contrast to result-refinement sessions (category 1), query-refinement sessions are not about simply restricting the result set (not only, at least), and also not about simply adding further properties to be retrieved for selected entities (as done in the result-extension sessions, category 3), but involve adding and tinkering with more complicated query features.

A typical example of a session in this category is [session02](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session02) in which the user develops a query to retrieve a list of all free software, including information about operating systems and licenses of each such software, but with the explicit desire to have only one result row per every such software. After running the initial query, which is already comparably sophisticated, the user starts extending and modifying the query step by step (adding result columns, adapting the ORDER BY clause, refining aggregation functions from SAMPLE to GROUP_CONCAT, etc).

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

A typical example of a session in this category is [session30](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session30) in which the user aims to retrieve the official languages of all countries, with a restriction to natural languages. Unfortunately, the user has a type in one of the URIs, due to which the query result is empty. Throughout the session, the users tries different variations of the query and eventually starts removing parts of the query to see which part of the query is causing the query result to be empty.

The complete list of sessions that fit into this category is:
[session01](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session01),
[session03](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session03),
[session10](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session10),
[session24](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session24),
[session30](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session30),

## Category 6 - Shifting Query Intent
The query intent shifts to different but related topics throughout such a session. Typical changes to the queries in such sessions include adapting values used for filtering, changing the predicate or the class URIs mentioned in the query pattern, and also adding or dropping whole parts of the query.

A typical example of a session in this category is [session11](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session11) in which the queries change from retrieving Croatian organizations to Croatian companies, and switch between retrieving Croatian language labels and English language labels.

The complete list of sessions that fit into this category is:
[session09](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session09),
[session11](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session11),
[session12](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session12),
[session19](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session19),
[session23](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session23),
[session26](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session26), and
[session28](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions/session28).
