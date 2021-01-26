#!/bin/bash

rsync \
    -avzPm \
    --include="*/" \
    --include-from='synced' \
    --exclude="*" \
    $HOME/.[^.]* .

# --include="*/"            => include all subdirectories
# --include-from='synced'   => include all specific patterns
# --exclude="*"             => exclude all the rest
