# SOC-Hub: A Learning Site for Soil Carbon Science 

This repository contains all files related to the SOC-Hub project.

This is a `git` repository, a version control system that keeps track of all files we will share in this project. It will help us to stay updated with the most recent version of all files and recover previous versions if needed.

The first thing you want to do is to clone this repository, i.e. to download a copy of all files to your computer so you can work on them, make changes and then push updated versions to the central repository. To clone the repository you need first to open the Terminal in OS X, or the Command Prompt in Windows. Once you are there type

```
git clone https://github.com/powellcenter-soilcarbon/SOC-Hub.git
```

now go to the SOC-Hub folder and see if everything is there

```
cd SOC-Hub/
ls
```

After making changes to existing files or adding new files, you have to tell Git to incorporate these changes with `git add` as

```
git add filename.extension
```

Then, you need to commit the changes before pushing to the central copy using the command `git commit` as

```
git commit -m "Write here a meaningful message"
```

Now you are ready to share your changes with the group using the command

```
git push
```

If you run into problems, you probably can find a solution online just by googling it. You can also find documentation in [Git's website](http://www.git-scm.com/).
