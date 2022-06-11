# Git scripts
script summary for additional git stuff.
Needs to be loaded in local `.gitconfig`:

assuming the repo is cloned to `~/git.local` add/update following line in `.gitconfig

```shell
[includes]
  path = ~/.git.local/aliases
[init]
  templatedir = ~/.git.local/templates
```

## Tempaltes
#### prepare-commit-msg
Will extract a part from the branch name to add it as prefix on commit message.
```shell
Branchname: feature/SOMETICKET-12356
CommmitMessage: fixes converting issue

Resulting Message: [SOMETICKET-12356] fixes converting issue
```

## Aliases
#### Repository Size
Get size current size of repository. Utilizes `scripts/gitsize.sh`

Usage:
```shell 
$ git size
repository size: 3,071KiB
```

## Troubleshooting
To apply new hooks to a given repository, adjust config as writen above and reinit git repository with `git init`