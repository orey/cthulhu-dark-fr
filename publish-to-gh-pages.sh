#!/bin/sh

clear

if [ $# != 1 ]
then
  echo "Usage : publish-to-gh-pages.sh [git comment]"
  exit 0
fi

git checkout gh-pages
cp index.html cover.css ./site
git add *
git commit -a -m "$1"
git push origin gh-pages
git checkout master

echo "Done."

