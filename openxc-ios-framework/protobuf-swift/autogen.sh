#!/usr/bin/env sh
#
# This script regenerates the autoconf-based configure script.  The resulting
# files aren't managed by source control but are included in the distribution.

set -ex

mkdir -p m4
autoreconf -f -i -Wall
rm -rf autom4te.cache configure.ac~ config.h.in~
