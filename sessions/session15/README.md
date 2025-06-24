# session15
**Extracted from chunk:** chunk_06.log

**ID of first query in session:** 915732400

**number of queries:** 4

**query evolution description:**

This session starts with a query that asks for elements and their superclass, next even for the superclass of the superclass. Following this, the superclasses are successively considered optional.

**user story:**

The user starts with a query that asks for automobile models and their superclass. (Example: Audi A8, sedan) This is followed by a query that searches for the superclass of the superclass already requested. (Example: Audi A8, sedan, car)
Afterwards, the top level of the two-level subclass hierarchy becomes optional, so that car models whose superclass does not have its own superclass can also be selected.
Finally, both subclass properties become optional. However, this query ends in a timeout. The user does not seem to continue at this point.
