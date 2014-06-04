% Security and the Rise of Snakeoil
% Peter Parkanyi (orig: Stefan Marsiske)
% 04 June 2014

The original of this essay was written by
[stf](https://www.ctrlc.hu/~stef/blog/posts/szekuriti.html) in Hungarian. I
decided to go ahead and translate it into English because I liked it.

There are more and more people who are starting to realise what sort of trap
they ended up in by using the internet. While they desperately want to do
something about it, they might not have the knowledge or resources to actually
make the first step, like leaving Facebook or Gmail behind. Yet, people
desperately want to do *something*, even if that means the online equivalent of
not carrying mineral water onto airplanes. Every week we see a new NSA-proof,
military grade encrypted, web-based chat application, or people with nice CVs
who finally figured out how to do secure email in the browser. Self-acclaimed
experts teach their peers at cryptoparties how to defend themselves against
adversaries from the last decade. This article is for the latter. This game
might get dangerous, and should be handled with care.

1. security is a conscious, multi-layered, economic process
1. certain adversaries are more motivated, and control more resources than others
1. defenders can only lose. they have to be prepared, and minimise the value and surface of an attack
1. know your adversaries, the resources at their disposal, and act accordingly
1. there are environmental/side-channel/indirect attacks
1. there are non-technical aspects
1. many mitigation techniques are overly expensive and inconvenient

The more you know your device, the more you are in control over it. You should
notice when it misbehaves or acts without your intent. As a corollary, when you
know nothing about your device, you're naked and exposed. Therefore, mitigation
measures need to form a conscious structure, and have to be continuously
re-evaluated.

Security is an economic process, and thus the mass majority of the non-targeted
attacks can be mitigated when the you raise your cost of defence marginally
above the average of the potential victims. In non-targetted
attacks, the attacker still plays by the rules of economics: minimise costs, and
maximise profit. As of 2014, the most economically viable targets are Windows
and Adobe users, while estimates suggest that OS X users will make a juicy
cut once OS X market share hits ~20% [citation needed]. As a consequence,
diversity is an effective mitigation, as a custom -- competent and expensive --
system will require a custom -- and expensive -- attack. Lastly, it makes
little sense to overspend on security. A classic example is spending $150 on a
lock for a $50 bike.

A good way to raise the cost of an attack is defence-in-depth: when plan A
falls, plan B will still cause a headache for the attacker (and so it goes).
Interestingly, security-by-obscurity in this case can significantly raise the
costs, but only when supported by conscious, in-depth countermeasures.

Since this is an economic system, the defender can only fail when met with a
resourceful enough adversary. In other words, all defence will fail in face of
a motivated and rich attacker.

While an attacker can measure his effectiveness easily, a defender can only not
fail at best. Even without an obvious failure, she can't be certain that there
hadn't been a breach that went unnoticed. Sony is a good example of how amateur
defenders can only fail against professionals. Minimising the amount of data we
store for longer periods (e.g. half a year or more) will reduce the value of an
attack, while, say, consciously controlling an online presence will reduce the
attack surface on our persona.

These are general best practices, and we need to know our adversary: who they
are, what they are capable of, what sort of resources they have at disposal. A
simplified model of adversaries might be the following: citizen, criminal,
corporation, country.

A citizen is of course any average user. A criminal would be any organised and
less organised actor. A corporation can be Google or Facebook, but it could be
just the company you work for if your internet traffic is monitored, so this is
probably the broadest category of all. Last, but not least, we have countries,
or rather, nation-states, in which case the adversary is probably a foreign
intelligence agency, although certain politicians in opposition, political
activists, journalists, or whistleblowers might warrant the attention of a
domestic adversary.

We also have to mention environmental or indirect attacks. An adversary might
not solely attack the target, but can use (or rather, abuse) the surrounding
environment, too. The defender has to think about her communication partners,
if any of them may have an adversary model that is different from, or higher
level than hers. The social network of a target (Facebook image tagging)
contributes to the attack surface as well as any other environmental factor,
since a well-motivated attacker will try to find and exploit the weakest link
to the target. When that cheapest path is through a less-prepared peer, that
just makes things a whole lot quicker and an economic adversary more effective.

(Un)fortunately the attacks and mitigation techniques can be non-technical, and
may have other aspects, such as economical, educational, social, or judicial.
Many in position to change things are motivated not to. For example, the net
neutrality and data protection acts are likely to become sabotaged in the
European Council. It seems like there won't be any outcome from the
surveillance scandal. The act about data retention was invalidated by the
European High Court, but European member-states are yet to act. However, there
are other judicial aspects -- citizens have to act within the boundaries of the
law, while this does not apply to every actor. Some of these actors will try
and undermine new legislation, or broaden their authority through existing
legal structures. A few ideas that could improve the current situation:

1. general immunity for hackers who publicly expose security holes
1. motivating the attacks of own infrastructures rather than pursuing it
1. education about security, attacks, and vulnerabilities
1. non-free software vendors' liability for handling vulnerabilities should be enforced
1. deterrent financial liability for misuse of personal information
1. public disclosure of, and diligent post-mortem analysis for every incident
1. new legislation for data protection, net neutrality. end data exchange and data collection treaties and legislation
1. free up the frequency bands that become unused after the digital dividend for unlicensed use

Defence is difficult: many mitigation techniques are ceremonial and
complicated even for the trained defender, and so she'll perform it
rarely, or eventually stop the practice altogether. In many respects,
these ceremonies are like brushing teeth: we're not doing it because
we enjoy it so much, but rather because of the belief in a future
reward such as not having to go to the dentist's, or improving our
chances for reproduction. A principled approach and attention to
detail are essential, just like with any implementation, see "goto
fail", or "heartbleed". Correct code is usually not trivial, and the
correct use of tools is often hard due to external constraints.

Naturally, the it would be best if this whole process could be simplified, but
it is also the goal of the adversary to make it as hard as possible.

A'tuin is the turtle in Terry Pratchett's Discworld, on whose back 4 elephants
hold the discworld on their backs. And what is below A'tuin, you ask? It's
turtles all the way down. A'tuin is the perfect symbol for the endless layers
of attack surfaces, that you discover if just start scratching: A'tuin ->
organisational -> physical -> psychological -> browser -> OS  -> HW -> network
-> network OS -> network HW -> TEMPEST emissions -> other side-channels ->
A'tuin.

We also need to stop and talk about browsers for a minute, because people tend
to create and spread all sorts of snakeoil based on the them. The reasons for
using the browser as a distribution medium is none other than to externalise
the costs of having to support installation on multiple systems, while
introducing a huge attack surface. The age when a browser's primary goal was
actually browsing websites are long gone. Browsers of today are for pushing ads
into people's faces, and make them pay for various services. A good example for
this is Mozilla, who wanted to push ads into the start screen of Firefox, and
all they managed to get done since the Snowden revelations is making tabs
shinier and putting DRM into the browser. There are 6 easy rules to identify
99% of snakeoil:

1. not free software
1. runs in a browser
1. runs on a smartphone
1. the user doesn't generate, or exclusively own the private encryption keys
1. there is no threat model
1. uses terminology like "cyber", "military-grade", or other marketing mantra

As a conclusion, some food for thought, in the form of 3 questions:

1. how often do you update your systems?
1. how strong are your email passwords? do you reuse them for other pages, too?
1. how many of your peers use GMail, Facebook, Skype, and do you keep in touch with them through these?

To try estimating the footprint you leave online, check out and think about
your results on [MyShadow](https://myshadow.org). And then welcome to the ride on A'tuin.
;)
