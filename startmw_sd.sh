#!/bin/bash
echo Starting TES3MP Server
konsole --hold -e sh /$dir/tes3mp-server > /dev/null 2>&1 &
echo TES3MP-SERVER Started.
konsole --hold -e sh /$dir/tes3mp > /dev/null 2>&1 &
echo TES3MP Started.
