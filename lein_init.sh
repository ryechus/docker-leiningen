#!/bin/bash
project_name=$1

if [ -z "$project_name" ]; then
    echo "Please enter a project name"
    exit 1
else
    echo "$project_name"
    docker run --rm -w /$project_name -v `pwd`/$project_name:/$project_name clojure:lein lein new $project_name --force --to-dir /$project_name
fi



