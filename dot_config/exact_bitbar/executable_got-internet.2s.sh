#!/usr/bin/env bash
# <bitbar.title>Got Internet?</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Federico Brigante</bitbar.author>
# <bitbar.author.github>bfred-it</bitbar.author.github>
# <bitbar.desc>Checks the connection to Internet and tells you in a single character.</bitbar.desc>
# <bitbar.image>http://i.imgur.com/I8lF8st.png</bitbar.image>

ping_timeout=1
ping_address=1.1.1.1

if ! ping -c 1 -t $ping_timeout -q $ping_address > /dev/null 2>&1; then
	echo "✧|color=#f23400 dropdown=false"
	echo "---"
	echo "Status :: Offline :: $ping_address"
else
	echo "✧|color=#7ff21c dropdown=false"
	echo "---"
	echo "Status :: Online :: $ping_address"
fi
