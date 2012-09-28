% The Horrible Moment when Everything Works
% Peter Parkanyi
% 28 September 2012

There hasn't been an update on the
[KitchenSync](http://indiegogo.com/kitchensync) project site for some time, and
this is because I started the crowdfunding campaign just after moving to the UK,
and needed to bootstrap my own little network infrastructure in my flat. I did
not have the time, nor the possibility to work on the Raspberry Pi software,
because I just didn't have the hardware setup that was necessary.

This has changed. I bought myself a router, the USB mains charger with a UK
plug, and finally set it all up.

I wasn't particularly interested in the stock firmware that came with the
router, so right after unpacking, I flashed DD-WRT on it. Sadly, I found
out only after I had received the box that it is not supported by OpenWRT, so I had
to stick with the other popular WRT distribution.

There are actually many reasons one might want to eliminate the stock firmware
from their home router. Not only do you get the chance to opt out some [weird
corporate cloud](http://www.theverge.com/2012/7/2/3131738/cisco-linksys-router-update-connect-cloud),
it also extends the functionality. My ISP requires me to log in on a captive
portal after 30 minutes of inactivity, but fortunately they didn't put much
effort into hardening their login page. Thus, a simple cron one-liner on the
router did the trick, which would have been impossible with the stock firmware.

I have also put my laptop dock into good use after all. When I leave home, I
just undock my machine, and pop it in my bag. With a huge battery, I can go
all day without a charger, so that's fine. If the machine rests on the dock, it
just uses the wired connection with the router, and my USB hard drives spin up.

The Raspberry Pi, my soon-to-be KitchenSync, is placed just beside the router.
Sadly, I don't yet have the fancy case for it, but as soon as it arrives, I'll
start posting pictures. Luckily, I have UTP cables in different colours for all
my wired devices, so my desk doesn't look like a pile of boring gadgets
(firstly, because it isn't).

Why is this even exciting? Because this is the first time I'm in full control
over the network setup at home, and just because I love it when suddenly
everything starts to work. Even better, my phone, the Raspberry Pi, the router,
and my laptop are all powered by some sort of Linux. I actually realised this
after having set up everything, but I think it's cool anyway.

In some twisted sense, however, I'm also sad. This means that the infrastructure
works as it should, and I don't have any ideas on improving it. Apart from some
proper VPN setup. And an Arduino temperature sensor. And KitchenSync.
