svnsf2github_poller
===================

An init.d poller script from a SourceForge subversion repository to a github mirror. You need to have a 'git svn' repository to make the transitions.

**Setting up you 'git svn' repository**

For GPAC:
- ```svn2git http://svn.code.sf.net/p/gpac/code/trunk/gpac --authors ../authors.txt --nobranches --metadata --rootistrunk gpac```
- Note the use of 'http' as protocol ; 'svn' was not reliable enough on SourceForge in my experiments.
- Use 'git svn fetch' and 'git svn rebase' then 'git push' to retrieve from SourceForge to github.

**Customization**

In the svnsf2github script file, fill:
- the location of the 'git svn' repository

For Github, don't forget to use keys with an empty passphrase!

**Deployment**

Put this script in /etc/init.d/ or launch it immediately using: ```service svnsf2github start```

**More**

Read http://www.tldp.org/HOWTO/HighQuality-Apps-HOWTO/boot.html for a very complete explanation.
