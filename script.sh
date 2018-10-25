
# 1) check the repo for a parent repo

html_url=$(curl -s 'https://api.github.com/repos/michaeldimmitt/gh' | \
  python -c "import sys, json; print json.load(sys.stdin)['parent']['html_url']");
echo "git remote add forkName $html_url.git";
echo "git remote add forkName https://github.com/jdxcode/gh.git";

# 1) check the repo for the forks url
fork_url=$(curl https://api.github.com/repos/michaeldimmitt/gh | \
  python -c "import sys, json; print json.load(sys.stdin)['parent']['forks_url']");

curl $fork_url;
# 2) request forks
# If no parent repo, (example imagines there was no parent repo.)
# https://api.github.com/repos/ahazem/gh/forks
# If parent repo exists use the parent repo in the api request.
# https://api.github.com/repos/jdxcode/gh/forks
