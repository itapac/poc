#!/bin/sh

iwconfig $1 mode Ad-Hoc
iwconfig $1 essid staiacasa.net
