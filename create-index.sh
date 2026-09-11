#!/bin/bash

cat <<EOF > index.qmd
---
title: "Web Dev 1"
---

# Index

EOF

for f in $(ls -v1 WD1*.qmd); do
  n=$(grep "subtitle" $f | sed -e 's/subtitle: "\(.*\)"$/\1/g')
  echo "- [$n](./$f)" >> index.qmd
done

echo >> index.qmd
