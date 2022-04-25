#!/usr/bin/env bash

u=$(xprop -name "polybar-sysinfo_DP-2" _NET_WM_PID | grep -o '[[:digit:]]*')
kill $u
