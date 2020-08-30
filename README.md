# js-skeleton

This package contains a batch file that generate a standard filesystem skeleton suitable for all JavaScript packages.

## Usage

You can generate the JavaScript standard filesystem skeleton running the following batch file.

```
bin/generate.bat
```

After that the batch ask you if you want to clone a repo in this folder.

```
Standard JavaScript package skeleton created...
Do you want to clone a git repo here?[y/n]
```

If you choose yes the batch ask you the url of the git repository.
Just type the url and press enter.

```
Standard JavaScript package skeleton created...
Do you want to clone a git repo here?[y/n]y
Enter your git url: https://myname/path/to/reponame.git
```

You will see something like this:

```
Standard JavaScript package skeleton created...
Do you want to clone a git repo here?[y/n]y
Enter your git url: https://myname/path/to/reponame.git
Cloning into 'reponame'...
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 7 (delta 0), reused 4 (delta 0), pack-reused 0
Unpacking objects: 100% (7/7), done.
done.
```

A Markdown file, `NOTE.md`, will also be generated which contains notes about the standard filesystem skeleton.
