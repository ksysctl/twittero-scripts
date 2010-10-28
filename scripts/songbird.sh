#!/usr/bin/python
# -*- coding: utf-8 -*-

# -----------------------------------------------------------
# Twittero - Powerful Twitter client
# Songbird Script for Twittero
# -----------------------------------------------------------
# $author: Moises Brenes <moises.brenes@gmail.com>
# $license: BSD License - $depends: songbird - dbus - mpris
# -----------------------------------------------------------

import dbus

try:
	bus = dbus.SessionBus()
	o = bus.get_object('org.mpris.songbird', '/Player')
except:
	print '♫♪ #Listening'
	exit(1)

data = o.GetMetadata()
print '#Listening ♫♪ {0} by #{1} from {2} using #Songbird'.format(data['title'], data['artist'], data['album'])
