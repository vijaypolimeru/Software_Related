# Git Related...

## Useful Commands/Processes

### Creating a git-repo from Command Line and push to  GitHub

1. Create a directory (or folder) in the local computer to keep the project files.
2. Start the ***git-bash*** or any ***CLI*** from inside the directory.
3. Type `git init` in the command line. (Now your **local project directory** also called **working directory** turned into a **Local Git - Repository** or commanly called as **Git - Repository**)
4. Add a sample text (`.txt`) file and write some code (or any random text) in it.
5. (Optional) Add a `.gitignore` file with all the file extensions that are not necessary to track
6. Type `git status .` to see the untracked and modified files in the **Git - Repository**.
7. Type `git add .` to add all the files to **Staging**
8. Type `git commit -m "Commit Message - Say Initial Commit"`

Thats all **Git - Repository** has been locally created in your computer. If you want, you can work like that alone, If you want to create a **Remote Git - Repository**, then you must
subscribe to any of the cloud based git-services. (such as, GitHub, GitLab, BitBucket etc.). Following is the procedure for **GitHub**

1. Create an Empty repository in GitHub. Public or Private with no files added to including `ReadMe.md` (We will add all those once we publsh the local repository on github).
2. Copy the `URL` of the repository (say `https://github.com/vijaypolimeru/Git_Test.git`).
3. Type `git remote add origin https://github.com/vijaypolimeru/Git_Test.git`
4. Then type `git remote -v`
5. Then type `git push origin master`

That's all your **Local Git - Repository** has been uploaed (or pushed) to the **Remote Git - Repository**.


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
	
### Changing a Commit Message
1. ***Committed but not pushed to the remote Repo*** - In this case type `git commit --amend` in *git bash*, a text file will open, there edit the message then save and then close it. Your wrong message will be updated with the right one. If you don't want a text file, then type `git commit --amend -m "Right Message"`
2. ***Changing the Message of Most Recently Pushed Commit*** - In this case follow the steps mentioned in point 1. Then use `git push --force`, it commits to the master-branch, if you are changing the message in branch other than master-branch then type `git push --force example-branch`
	
### Git-Bash vs Git-GUI, Relative Advantages and Disadvantages

A better answer will come soon, untill then try to do the operations listed in the above sections in any Git-GUI, you will come to know, why Git-Bash is much superieor to any Git-GUI...

## Bucket List of upcoming Git Related Topics

- [ ] ***Branches*** - Creating and performing other operations, such as checking them out, merging with master branch etc
- [ ] ***Merge Conflicts***
- [ ] Dealing with ***Detached Heads***
- [ ] Some imporatant git processes every developer must aware of
	- [ ] How to checkout a one of the past commits?
	- [ ] Will add more :)
	
- [ ] List of essential ***Git*** commands that every developer must aware of (In detail explanation with examples) 
	- [ ] `config`
	- [ ] `checkout`
	- [ ] `reset` and its varities
	- [ ] `stash`
	- [ ] `cherry-pick`
	- [ ] `revert`
	- [ ] `rebase`
	- [ ] `log`
	- [ ] `blame`
	- [ ] `diff`
	- [ ] `reflog`
	- [ ] `show`
	- [ ] `remote`