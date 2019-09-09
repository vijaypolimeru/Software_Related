# Git Related...

## Ignoring Files That Have Already Been Committed to the Rrepo 

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
