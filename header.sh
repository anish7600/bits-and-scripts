#!/bin/bash

# Check for input argument
if [ -z "$1" ]; then
  echo "Usage: $0 <topic-name>"
  exit 1
fi

# Directory name (from argument)
DIR="$1"

# Format title (replace _ with space, capitalize)
TITLE=$(echo "$DIR" | sed 's/_/ /g' | sed -E 's/(^| )(\w)/\U\2/g')

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Write to index.md
cat > "$DIR/index.md" <<EOF
---
layout: default
title: $TITLE
---

<a href="https://anish7600.github.io/technical-writeups" style="text-decoration: none;">← Back</a>

EOF

echo "✅ Markdown created: $DIR/index.md"


# ### 🧪 Example usage

# ```bash
# ./generate_markdown.sh react_vs_svelte_vs_vue
# ```

# **Output: `react_vs_svelte_vs_vue/index.md`**

# ```markdown
# ---
# layout: default
# title: React Vs Svelte Vs Vue
# ---

# <a href="https://anish7600.github.io/technical-writeups" style="text-decoration: none;">← Back</a>
# ```
