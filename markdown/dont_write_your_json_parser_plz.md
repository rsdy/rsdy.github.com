% Don't write your own JSON parser, please
% Peter Parkanyi
% 20 October 2012

_TL;DR_: just use a fucking library.

I’m reading more code than I used to. Partly, because that’s how freelancing
works, and partly, because I’m getting more interested in other people’s codes.
Usually, I find little marvels, either in the good, or the bad way.

When dealing with tidy code, things just make sense. Everything works as you
expect it to work, and it feels throughout the project, that the original
author knew what he was dealing with. Tidy code uses libraries that make sense,
and implements as few things as possible to fulfill its purpose. The
architecture should be flat, and wide, rather than deep and narrow. Clean code
makes sense, but certainly isn’t a silver bullet, and you might find yourself
seeing shortcuts for the sake of laziness, or trying to keep it small. That’s
fine.

Bad code, usually, is not so subtle. Even the directory stucture is messed up
in the Django project. Looking at urls.py is a great start figuring out how
screwed you are if you have to touch it. Eventually, you’ll come across a JSON
parser implementation, that tokenizes the incoming string based on special
characters, and that’s when you start weeping like a little baby.

For starters, this is not how one parses a JSON file, however simple that might
seem at first. If the author didn’t have the time to write a proper JSON
parser, then she should have looked for a library, because the Internet is
filled with JSON parsers for various languages.

Since tokenizing is not the proper way of parsing a JSON (and a CSV that may
contain strings, for that matter), the application is flawed from this point.
If you do this, you’re building a functionality on a piece of code whose
behaviour is arbitrary.  Naturally, the data that is extracted from a JSON
should be validated, but even if that bit is intact, you’re building on a
certain implementation of the interface, that is the JSON formatted input being
parsed. Thus, whenever the generator of the input changes in implementation,
you’re pretty much screwed.

There is one reason I can imagine that could justify such a solution in a
shipped code. When dealing with huge amount of data, a substring magic could be
faster than a full-blown JSON or CSV engine. I would use this solely for a
one-time hack, but I can imagine a situation where the API or data is stable
(as in, change is controlled and coordinated), and the possible inputs can be
expressed in regexp. That would be a weird design, but may make sense in
certain industrial environments, or the good old enterprise.

Most of the time, though, this is not the case. It is fine if you don’t know
how how JSON works in the language you’re coding in. Be creative just enough to
write down the search keywords, but not so much to write the whole stuff.
Others have done it.
