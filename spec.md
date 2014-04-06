JLScript
--------

An object-oriented scripting language.

There are two levels of data:  "Objects" and "Values".  Objects are generic,
untyped collections of values (or references to other objects); all objects
are mutable and stateful.  Values, however, are strongly typed, immutable, and
persistent.

There are explicitly two types of "functions": "pure" functions (which are
referred to as simply *functions*) which operate only on values and do not
have any side-effects, and *procedures*, which are all methods of objects and
can directly mutate the object they live in, or call procedures on other
objects; they can also return values.

There are static "classes", but they are really more like "interfaces".  If an
object is an instance of a class, it means that it fulfils the contracts of
what that class statically specifies -- namely, that it has the specified
contents of the specified types.  An object can be an instance of multiple
classes, and it is easy to define classes that are unions of multiple classes.

All statements/procedures are then "typed" by classes that must be
implemented in an object.  "Duck types", or ad-hoc interfaces, may also be
defined.  Otherwise, any attempt to retrieve any item inside an object is
wrapped in a nullable/Maybe; this is polymorphic even on the "type" of the
value; an attempt to retrieve an Int value of the same name as a String value
will return a null/Nothing.

Should functions be overloaded by type signature of their calling parameters?
Perhaps only as a convenience.  Normal values cannot; that would be way too
confusing.



