### Under Construction

How to clone the contents of this repo into an existing folder, overwriting existing files:
```bash
# navigate to installation
cd /path/to/library/common/Insurgency\ Dedicated\ Server/
# initialize the repo
git init
# assign to proper remote
git remote add origin git@github.com:jdmillard/ins-server.git
# update local repo
git fetch
# set to the remote master branch, discarding local disparities
git reset origin/master --hard
# set the upstream in order to track the proper remote branch
git branch -u origin/master
```
