#!/bin/sh

USER_IDS=(-e BUILDER_UID="$( id -u )" -e BUILDER_GID="$( id -g )" -e BUILDER_USER="$( id -un )" -e BUILDER_GROUP="$( id -gn )")

docker run --rm -v $PWD:/work  "${USER_IDS[@]}" ataribuild  $*
