#!/bin/bash

cat <<EOF > index.qmd
---
title: "CSC4001: Systems and Architecture"
---

# Index

EOF

for f in $(ls -v1 CSC4001-*.qmd); do
  number=$(echo "$f" | sed -e "s/CSC4001\-\(S[[:digit:]]\+\\)-.*/\1/g")
  name=$(grep "title" $f | sed -e 's/title: "\(.*\)"$/\1/g')
  echo "- ${number}: [$n](./$f)" >> index.qmd
done

echo >> index.qmd
