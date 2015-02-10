 #!/bin/sh
#Usage: ./write-post.sh <post title in quotes>

if [ -z "$1"]; then
    echo "Please type title name"
    exit
fi


T=$(date +"%Y-%m-%d %H:%M")
slug="$(date +"%Y-%m-%d")-$1"

echo "Title: $1
Tags: 
Date: $T
Category:
Slug: $slug
Author: cs.nctu.edu.tw@pichuang 
Summary:" > ./content/$slug.md
vim ./content/$slug.md
