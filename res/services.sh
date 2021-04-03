#!/bin/sh

type getarg >/dev/null 2>&1 || . /lib/dracut-lib.sh

SERVICES="$(getarg live.services)"

IFS=','
for SERVICE in ${SERVICES}; do
    ln -sf /etc/sv/${SERVICE} ${NEWROOT}/etc/runit/runsvdir/default/
done
