# Git Related...

## Useful Commands/Processes

### Ignoring Files That Have Already Been Committed to the Repo 

Git can only ignore files that are *untracked* - files that haven't been committed to the repository, yet. That's why, when you create a new repository, you should also create a `.gitignore` file with all the file patterns you want to ignore.
However its very difficult to know upfornt about all the file types that you want to be ignored.

Before cleaning the git repository, 

* Just commit all the outstanding changes
* Edit `.gitignore` file, so that it represents the latest set of file tyes that needs to be ignored.

Cleaning the Repo

Following are the three steps to clean up your repository and make sure ignored items are indeed ignored

```no-highlight
$ git rm -r --cached .
$ git add .
$ git commit -m "Clean up ignored files"
```

### Commiting Changes Made Only in a Directory (or) Sub-Directory Within a git Repo

Some times, it is necessary to commit only the changes made in a sub-directory within the git working directory. Follwing procedure helps to do that,

1. Go to the sub-directory, whose files you want to commit (you can do this in two ways, 1. open **git bash** and navigate to the desired sub-directory using `cd` command 2. Go to the desired sub-directory and open **git bash** there)
2. After you are in the sub-directory,
	1. `git status .` - To view all the modifed and untracked files in that sub-directory and  sub-sub-..-directories relative to the chosen sub-directory
	2. `git add .` - To add all the modifed and untracked files in that sub-directory and  sub-sub-...-directories relative to the chosen sub-directory to the staging.
		1. If you don't want to add files, then replace `.` (dot) with appropiate `file name.exten` such as `git add "GMData\File Name.txt"` (double-quotes are necessary only if there are spaces in the file path)
	3. `git commit -m "Commit Summary (or) Messgage"` - To commit all the staged files