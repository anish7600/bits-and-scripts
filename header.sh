#!/bin/bash

echo "$1"

# Create the directory if it doesn't exist
mkdir -p "$1"

# Write content to index.md inside the directory
cat > "$1/index.md" <<EOF
---
layout: default
title: $1 
---

<a href="https://anish7600.github.io/technical-writeups" style="text-decoration: none;">← Back</a>

EOF

