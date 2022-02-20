#!/bin/bash

# this script conveniently runs the development server. 
# to see other ways it could be run, `$hugo help`.

echo -e "\033[1m$0\033[0m" 

 echo -e "\033[1mRunning hugo dev server\033[0m with the following command:" 

HugoParams="serve \
	--buildDrafts \
	--cleanDestinationDir \
	--enableGitInfo \
	--gc \
	--quiet \
	--watch"

echo $HugoParams

echo -e "\033[1mRunning hugo dev server.\033[0m"

hugo $HugoParams
