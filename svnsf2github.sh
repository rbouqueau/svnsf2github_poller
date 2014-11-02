#!/bin/sh
su - rbouqueau -c 'watch -n 60 "cd /home/rbouqueau/Works/gpac/gpac_github_metadata ; git svn fetch ; git svn rebase ; git push"'
