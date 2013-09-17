#!/bin/bash

# Mount a filesystem via fuse-based sshfs.
# Not necessary to run as root

# Here ~/tufar.com/ is a local directory

sshfs ntufar@tufar.com: ~/tufar.com
