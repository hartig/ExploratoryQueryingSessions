# Exploratory Querying Sessions
This repository contains a small collection of exploratory querying sessions discovered in Wikidata query logs. The term _exploratory querying_ refers to an activity in which a human user issues database queries with the goal of producing a query that captures a particular query intent. Notice that this is different from data exploration which focuses more on achieving an understanding of the content of a database or dataset rather than on developing a query to express a particular query intent.

Our primary goal when creating this collection was to test the hypothesis that the Wikidata query logs contain sessions that exhibit exploratory querying behavior.

The sessions are organized in separate directories (one per session), where each of these directories contains files with all the queries that belong to the session and a short description that summarizes how the query developed in the session evolves throughout the session. Additionally, we provide a brief "user story" for each session in which we hypothesize what the user's query intent was and why the session has evolved in the way it did.

## Categorization of the Sessions
By an initial analysis and comparison of the sessions in this collection, we observe that these sessions---and, thus, exploratory querying behavior in general---can be grouped into different categories. In particular, we identify the following six categories based on our collection of sessions. We emphasize that these categories are not mutually exclusive; some sessions fit into multiple categories. We also emphasize that these categories are not necessarily exhaustive; there may be more categories, which are not evident from the sessions in our collection.

### Category 1 (Result Refinement).
During sessions within this category, the user modifies their query to limit the answers (rows) of the query result more and more. Typical query modifications in such sessions include the addition of further conditions, captured via FILTER expressions or via filtering triple patterns.

A typical example of a result-refinement session is [session14](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session14) in which the initial query retrieves science fiction authors and their respective place of birth; the subsequent queries are then becoming increasingly more restrictive regarding the selected authors (first, restricted to retrieve only authors born in the United Kingdom; thereafter, restricted further to filter out authors who were born before 1900).

The complete list of sessions that fit into this category is:
[session01](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session01),
[session05](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session05),
[session06](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session06),
[session07](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session07),
[session14](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session14),
[session16](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session16),
[session17](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session17),
[session18](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session18),
[session20](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session20),
[session22](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session22),
[session23](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session23),
[session25](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session25),
[session26](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session26),
[session27](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session27), and
[session28](https://github.com/hartig/ExploratoryQueryingSessions/tree/main/session28).

### TODO: add the other categories

## Method (TODO: rewrite this part)

Each of us has our own directory in this repo. There you will find a chunk of the log. We will each work with separate chunks of the log to find sessions that exemplify exploratory querying. Once you have found a session that shows the user doing exploratory querying, please use this template to describe the session. Please submit one file per session. Please add the files to the directory in this repo with your name. Our goal is for each of us to contribute descriptions of 4 sessions using this template.
Please use this template to describe your session files. Here is a [Sample session file](https://github.com/hartig/ExploratoryQueryingSessions/blob/main/Kat/universitiesChile.txt) for your reference.

ID of first query in session: 

number of queries:

query evolution description:

user story:

query 1:

query n:

# Inspecting Queries
Visiting the URIs used in the queries allows us to see their labels and descriptions which could be helpful in understanding query intent.
It is possible to copy the queries and try them out using the [Wikidata Query Service](https://query.wikidata.org/). 

# Guidance
Janik provided additional structure in the document to indicate likely boundaries around sessions. These are approximations, if you inspect the session and find unrelated queries feel free to ignore them and provide the ID for the query that you believe to be the actual start of the session. 
![session](https://github.com/user-attachments/assets/efa14d4b-907b-40a8-96ab-645750daae73)


We are hoping to gather sessions that contain evidence of exploratory querying. We do not want to collect sessions that seem to be examples of data exploration (ex. queries are repeated but one literal is changed). If a user story is difficult to imagine it may be a good sign to move on to another candidate session. 
