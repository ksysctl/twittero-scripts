#!/usr/bin/python
# -*- coding: utf-8 -*-

# -----------------------------------------------------------
# Twittero - Powerful Twitter client
# Banshee Script for Twittero
# -----------------------------------------------------------
# $author: Moises Brenes <moises.brenes@gmail.com>
# $license: BSD License - $depends: banshee - dbus
# -----------------------------------------------------------

import dbus

try:
	bus = dbus.SessionBus()
	o = bus.get_object('org.bansheeproject.Banshee', '/org/bansheeproject/Banshee/PlayerEngine')
except:
	print '♫♪ #Listening'
	exit(1)

data = o.GetCurrentTrack()
print '#Listening ♫♪ {0} by #{1} from {2} using #Banshee'.format(data['name'], data['artist'], data['album'])
