#!/usr/bin/env bash

# Run this script to add repo git hooks to your local git config

git init
git_root=$(git rev-parse --show-toplevel)
chmod u+x "$git_root"/scripts/git_hooks/*
cp $git_root/scripts/git_hooks/* $git_root/.git/hooks/
chmod u+x "$git_root"/.git/hooks/*
