#! /usr/bin/bash

  # In UPPERCASE: the variables, to change to your own situation
  # After double-Hash (##): remove them to get extra command ptions
  # 3 levels of indentation: Most important commands = no indentation, less often used commands = 2x left-indentation

# HELP
git COMMAND -h

# INSTALLATION
  # Choose your system
    sudo dnf install git-all # RPM
    sudo apt install git # APT
    sudo apt install git-all # alternative
    https://git-scm.com/download/win # Windows
    https://git-scm.com/download/mac # Mac

# CONFIGURATION
  # Setup your user (will appear in GitHub, and cannot be changed once appears in its history)
git config --global user.name "YOURNAME"
git config --global user.email YOUREMAILADDRESS
  # Optional:
    git config --global core.editor YOUREDITORNAME # Setup your opening editor
    git config --global init.defaultBranch main # Rename your root branch
  # Others
  git config --list ## --show-origin

# PROJECT CREATION
  # Either create your own files from scratch
  # Or either import an existing project (cloning)
  git clone https://github.com/THEUSER/THEPROJECT ## MYNEWDIRECTORY
    cd DIRECTORYOFTHEPROJECT
git init # cretaes a new .git directory with project files inside

# ADDING THE FILES TO TRACK TO YOUR STAGING
  # You can list the files to ignore in the .gitignore file (more on: https://github.com/github/gitignore)
  vi .gitignore
  *.[oa]
  *~
  # Add files to track
git add *
  # Remove files to track
  git rm --cached MYFILE # Will keep the file, but not track it anymore
  # Remove files after synchronization!
    rm MYFILE # This file is deleted from the system, but not from Git
    git rm MYFILE # The file gets removed from Git
    git rm -f MYFILE # In case there has been changes not taken in account, to force anyway
  # Rename
    git mv INITIALFILENAME FINALFILENAME

# COMMIT YOUR STAGING
  # Check the differences
    git status ## -s # Short version
    git diff ## --staged
  # COMMITS
git commit -m 'YOURMESSAGE'
    git commit -a -m 'YOURMESSAGE' #commit all changed files (can skip the git add)
    git commit -v -m 'YOURMESSAGE' #verbose

# PUBLISH TO REMOTE SERVER (PUSH)
  # CONNECTS to the remote
  git remote -v # List of your remotes
git remote add pb https://github.com/THEUSER/THEPROJECT # Add a remote
    git remote rename ORIGNAME DESTNAME
  # Check the differences
    git fetch origin # differences
  # Publish your code
git push -u origin main

#== WARNING ==
#The gitinit MUST be done INSIDE the repository folder, cannot be nowere else - so the generated hidden .git folder must be in the same as the README.md file
#The next commands (git add, git commit, git remote, git push) MUST ALSO be run from this folder, where this hidden .git folder is located, and nowhere else
