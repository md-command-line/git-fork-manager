# git-fork-manager
Determine if a fork or has forks, put them all as remotes.

### Get all the forks using github api:
1) check the repo for a parent repo 
https://api.github.com/repos/ahazem/gh
2) request forks 
If no parent repo, (example imagines there was no parent repo.)
https://api.github.com/repos/ahazem/gh/forks
If parent repo exists use the parent repo in the api request.
https://api.github.com/repos/jdxcode/gh/forks