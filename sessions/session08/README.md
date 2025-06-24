# session08
**Extracted from chunk:** chunk_10.log

**ID of first query in session:** 456763197

**number of queries:** 12

**query evolution description:**

The query has been fixed along the process and the numbers of variables are reduced to return more concise and simple result.

**user story:**

The user aims to find a list of artworks created by Leonardo da Vinci. For each of the artworks, show some attributes.
However, the first query has some errors, so only the list of the artwork is returned. Then the user fixed this issue in the next query and sucessfully got the artwork attributes, such as image, year of creation, who created or designed it, the place where it is located, the collection it belongs to, its dimensions, genre, material, and more. Until the end of the session, the user focuses on reduce the number of variables and optional properties to create a more concise query for his/her purpose.

**query01**

This is a complex one with nested subqueries and is used to extract artworks (paintings or similar items) created by a specific artist — in this case, Leonardo da Vinci (Wikidata entity: Q762). Something went wrong as only var1 was shown.

**query02**

Return me a list of artworks created by Leonardo da Vinci. For each artwork, show its image, year of creation, who created or designed it, the place where it is located, the collection it belongs to, its dimensions, genre, material, and more — if available. Sort the results by date of creation.

**query03**

variables to extract the metadata is reduced to certain attributes and remove the unused var

**query04**

refine the query and reduce the var number

**query05**

reduce to 10 variables in SELECT

**query06**

dimensions are removed from the query and make it more concise, focusing on fewer fields

**query07**

location is removed

**query08**

sort the result diffently, from creation date to alphabetical order

**query09**

reorder the result by entity IDs 

**query10**

Reduce variable again, no year extraction

**query11**

P1071 label is removed

**query12**

reduce to only one optional properties
