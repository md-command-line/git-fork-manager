
require 'json'

# 1) check the repo for a parent repo
temp_url=JSON.parse `curl -s 'https://api.github.com/repos/michaeldimmitt/gh'`
html_url=temp_url['parent']['html_url']
 puts "git remote add forkName #{html_url}.git";
 puts "git remote add forkName https://github.com/jdxcode/gh.git";


# 1) check the repo for the forks url
 temp_url=JSON.parse `curl https://api.github.com/repos/michaeldimmitt/gh`
 fork_url=temp_url['parent']['forks_url']

 ary=JSON.parse `curl #{fork_url}`;
 puts ary.class
 ary.map { |val| p val['html_url'] }
# 2) request forks
# If no parent repo, (example imagines there was no parent repo.)
# https://api.github.com/repos/ahazem/gh/forks
# If parent repo exists use the parent repo in the api request.
# https://api.github.com/repos/jdxcode/gh/forks
