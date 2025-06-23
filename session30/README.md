# session30
**Extracted from chunk:** chunk_07.log

**ID of first query in session:** 923978493

**number of queries:** 4

**query evolution description:**

Different URIs are tried in one position of the query. Moreover, starting with the third query, the user also simplifies the queries (removing the Kleene star from the property path pattern first, and then replacing the property path pattern with a triple pattern).

**user story:**

The user's aim was to retrieve official languages of all countries, but wanted to restrict these to natural languages. Unfortunately, the user made a mistake in one of the URIs, due to which the query result was empty. The user then replaced the concept of 'natural language' with other, more general language-related concepts (first, 'language family; then, 'language'), probably to see whether the initial restriction to natural languages was the reason for the empty result. But the user didn't realize the mistake with the wrong URI.

**query01**

For all countries (Q6256), retrieve all official languages (P37) that are an instance of (P31) a natural language (Q33742) or of any subclass (P279) of natural languages (using the subclass relationship recursively). Unfortunately, the URI for 'instance of' is incorrect (it should be http://www.wikidata.org/prop/direct/P31 instead of http://www.wikidata.org/prop/direct/p31), due to which the query produces an empty result.

**query02**

Exactly like the previous query but switching from 'natural language' to 'language family' (Q25295) now. Since the URI for 'instance of' is still incorrect, the result is empty again.

**query03**

Now switching to 'language' (Q34770) instead, and additionally removing the recursion (Kleene star) from the 'subclass' (P279) relationship. Still an empty result because of the incorrect URI.

**query04**

Removes the incorrect URI, which means that the query now asks: For all countries (Q6256), retrieve all official languages (P37) that are a subclass (P279) of language (Q34770). Returns an empty result because the official languages are not subclasses of language (instead, they are instances of language).
