### Installation

How to clone the contents of this repo into an existing folder, overwriting existing files:
```bash
# navigate to installation
cd /install/path/Insurgency\ Dedicated\ Server/steamapps/common/Insurgency\ Dedicated\ Server/
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

### Key Files

 | File                    | Purpose                                        |
 | ----------------------: | :--------------------------------------------- |
 | insurgency_start.bat    | starts the server (create shortcut on desktop) |
 | subscribed_file_ids.txt | specifies what workshop content is enforced    |
 | server.cfg              | general server settings                        |
 | server_checkpoint.cfg   | checkpoint mode settings                       |
 | mapcycle_millard.txt    | list of maps which can be voted for by players |
 | motd.txt                | server message (seen by players while loading) |
