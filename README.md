# Ada-tips
Collection of tip-of-the-day and fact-based questions for Ada.

The idea of this repository is to compile concise and expressive descriptions
of Ada language features. Possible applications include:

* Creating tip-of-the-day content to help users explore new Ada language
  features.
* Crafting snippets with interesting facts about the latest capabilities
  of the Ada language.
* Providing education on new features in a light and gamified format.
* Tracking compiler versions that implement specific features.

## Format of the database

Database contains a set of entries. Each entry describes some language feature
and may include:

* Unique id
* A reference to ARM
* A reference to the corresponding Ada Issue(s)
* Tip-of-the-day (one, two, a few sentences describing the feature)
* Detailed description
* Classification
  * Language version (currently just 2022)
  * Category
    * run-time library
    * real-time
    * usability
    * iterators
    * containers
    * syntax-sugar
* Dependency for getting know
  * better-after
  * better-with
* Example(s)
* Link/name of [ACATS](http://www.ada-auth.org/acats.html) test in any
* Test case for checking support in a compiler
  * List of urls for godbolt.org examples with statuses for GCC versions
* Users' feedback
  * Rating ("like count")
  * Complexity
  * Comments
  * Additional examples
  * External links(?)

## License

Database is licensed with [Creative Commons Zero v1.0 Universal](LICENSE).
