@echo off
git submodule deinit -f "%1"z
rm -rf ".git/modules/%1"
git rm -f "%1"
