# Exploratory Querying Sessions
This repository contains a small collection of 30 exploratory querying sessions discovered in Wikidata query logs.

The term _exploratory querying_ refers to an activity in which a human user issues database queries with the goal of producing a query that captures a particular query intent. Notice that this is different from data exploration which focuses more on achieving an understanding of the content of a database or dataset rather than on developing a query to express a particular query intent.

Our primary goal when creating this collection was to test the hypothesis that the Wikidata query logs contain sessions that exhibit exploratory querying behavior. In this sense, we did not attempt to be as exhaustive as possible, and neither did we attempt to be 100% accurate about the completeness of the sessions that we identified (i.e., the sessions in this repository may contain only a subset of the queries that the original sessions consisted of). Nonetheless, we are making available the collection because it may be a useful starting point for further research.

## Organization of the Repository
The sessions are organized in separate sub-directories (one per session) within the [sessions](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions) directory. Within such a sub-directory, we are providing each of the queries of the corresponding session as a separate file, where the file names reflect the order of the queries within the session. While these queries are from 2017, most of them can still be run successfully at the [Wikidata Query Service](https://query.wikidata.org/).

In addition to the queries, we created a readme file for each session in which we provide two short descriptions: one that summarizes how the query developed in the session evolves throughout the session and another one (called "user story") in which we hypothesize what the user's query intent was and why the session has evolved in the way it did.

Further artifacts in this repository are:
* the scripts with which we split the file of streaks extracted from the query logs into multiple chunks (see the [scripts](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/scripts) directory),
* the resulting chunks (see the [chunks](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/chunks) directory), and
* two files ([categories.md](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/categories.md) and [sessions_and_categories.csv](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/sessions_and_categories.csv)) in which we provide a categorization of the sessions.

## Categorization of the Sessions
By an initial analysis and comparison of the sessions in our collection, we have observed that these sessions can be grouped into different categories. In particular, we have identified six categories (see [categories.md](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/categories.md)):
* [Category 1 - Result Refinement](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-1---result-refinement)
* [Category 2 - Result Generalization](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-2---result-generalization)
* [Category 3 - Result Extension](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-3---result-extension)
* [Category 4 - Query Refinement](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-4---query-refinement)
* [Category 5 - Bug Fixing](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-5---bug-fixing)
* [Category 6 - Shifting Query Intent](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/categories.md#category-6---shifting-query-intent)

We emphasize that these categories are not mutually exclusive; some sessions fit into multiple categories. We also emphasize that these categories are not necessarily exhaustive; there may be more categories that are not evident from the sessions in our collection.

## Method

**TODO** complete this section of the readme ..
