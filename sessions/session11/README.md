# session11
**Extracted from chunk:** chunk_09.log

**ID of first query in session:** 706061334

**number of queries:** 8

**query evolution description:**

-

**user story:**

The user searches for companies in Croatia. The first query, which looks for organizations in Croatia times out. The couple of queries after that add a distinct to the output, or only search for results in Croatian, but keep timing out.
When the search changes from organizations to companies in Croatia, we start getting results. Then, the search is widened again to include results in English.

**query01**

The user searches for instances of (P31) subclasses of (P279*) organizations (http://www.wikidata.org/entity/Q43229) located in Croatia (http://www.wikidata.org/entity/Q224). The query times out.

**query02**

A condition of "Distinct" is added to the output. It still times out.

**query03**

"Distinct" is dropped and the search is restricted to results in Croatian. Still times out.

**query04**

An order by is added (ascending). Still times out.

**query05**

Language is changed to English. Still times out.

**query06**

"Organization" is changed to "Company" (http://www.wikidata.org/entity/Q783794), and the English language tag is removed. Now we get results, but the language tags are all over the place. (Looks like Cyrillic, Arabic, Bangla,...)

**query07**

Language tags are restricted to Croatian again.

**query08**

Language tags are changed to English. The query now returns an alphabetically ascending list of companies in Croatia, all results in English.
