# Exploratory Querying Sessions
This repository contains a small **collection of 30 exploratory querying sessions** discovered in [query logs](https://iccl.inf.tu-dresden.de/web/Wikidata_SPARQL_Logs/en) of the [Wikidata SPARQL Query Service](https://query.wikidata.org/).

The term _exploratory querying_ refers to an activity in which a human user issues database queries with the goal of producing a query that captures a particular query intent. Notice that this is different from data exploration which focuses more on achieving an understanding of the content of a database or dataset rather than on developing a query to express a particular query intent.

Our primary goal when creating this collection was to test the hypothesis that the Wikidata query logs contain sessions that exhibit exploratory querying behavior. In this sense, the colletion might not be exhaustive, and some if the sessions indentified might be incomplete (i.e., the sessions in this repository may contain only a subset of the queries that the original sessions consisted of). Nonetheless, we believe that this collection is useful starting point for further research and we hope to facilitate this by making it available.

This work is licensed under the [Creative Commons Attribution 4.0 International License][cc-by].

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
To create the collection of sessions we have applied the following method.

#### Logs Used
We used a subset of the [Wikidata SPARQL Logs](https://iccl.inf.tu-dresden.de/web/Wikidata_SPARQL_Logs/en) which contain SPARQL queries that have been issued to the [Wikidata SPARQL Query Service](https://query.wikidata.org/) during the period of ten months, from June 2017 to March 2018. The particular subset that we used is the set of so-called organic queries which is assumed to be "dominated by queries that indicate an immediate information need of many users" [[1]](#Ref1).

<div id="Ref1">[1] Stanislav Malyshev, Markus Krötzsch, Larry González, Julius Gonsior, Adrian Bielefeldt: <em>Getting the Most out of Wikidata: Semantic Technology Usage in Wikipedia's Knowledge Graph.</em> In Proceedings of the 17th International Semantic Web Conference (ISWC), 2018. https://doi.org/10.1007/978-3-030-00668-6_23</div>

#### Streak Extraction
Since the logs have been anonymized and contain no information based on which it would be possible to reconstruct user sessions (sequences of queries issued by the same user), we adapted Bonifati et al.'s concept of a  streak, "which intuitively captures a sequence of similar queries within close distance of each other" [[2]](#Ref2). We extracted such streaks automatically by using the method of Bonifati et al. with three additional constraints: i)&nbsp;subsequent queries within a streak must not be identical, ii)&nbsp;the timestamps for subsequent queries need to be at least 3 seconds apart, and iii)&nbsp;the timestamps for subsequent queries need to be at most 5 minutes apart. From the original log files, consisting of a total of 3.57M organic queries, this resulted in 24.050 streaks

<div id="Ref2">[2] Angela Bonifati, Wim Martens, Thomas Timm: <em>An Analytical Study of Large SPARQL Query Logs.</em> The VLDB Journal 29, 2020. https://doi.org/10.1007/s00778-019-00558-9</div>

#### Chunking
To distribute the work of inspecting the extracted streaks, we split the file of streaks into multiple chunks. The resulting chunks can be found in the [chunks](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/chunks) directory.

#### Manual Inspection
Each of us was assigned one of the chunks and, then, _manually_ inspected the streaks within that chunk, trying to find streaks for which it is likely that they have been (fragments of) sessions of a single user, respectively, who has performed some form of exploratory querying activity. As part of this process, to understand the purpose of the queries and why they might have evolved in the way that they did throughout their session, we (re)issued the queries at the [Wikidata Query Service](https://query.wikidata.org/) and consulted the Web pages for the URIs used in the queries.

For each exploratory querying session that we found, we formulated a hypothesis of what the user did and tried to achieve during the session (the aforementioned user stories), and we added a brief descriptions of how the query evolves throughout the session.

As this manual inspection was a time-consuming process, we decided that each of us does not need to find more than 3-4 such sessions. Therefore, each of us ended up looking only at a small part of their respective chunk of streaks, and it is quite likely that the 30 sessions in our collection are just a small fraction of exploratory querying sessions that can be found in the Wikidata SPARQL Logs.

-------
[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
