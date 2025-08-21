#!/usr/bin/env bash
set -euo pipefail
# Usage: bash linux_project_bootstrap.sh [project_dir]
PROJECT_DIR="${1:-linux_project}"
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# 1) Create files
: > profile.txt
: > commands.txt
: > log.txt

# 2) Pre-fill with headings / examples (edit these in nano/vim)
cat > profile.txt <<'EOF'
==================== Profile ====================
Name    : <Your Name>
Roll No : <Your Roll Number>
EOF

cat > commands.txt <<'EOF'
================= Favorite Commands ================
(Replace with your 5 favourites and a one-line purpose)
1) ls   - list directory contents
2) pwd  - show current directory
3) cat  - read/concatenate files
4) nano - edit text files in terminal
5) zip  - compress files
EOF

cat > log.txt <<'EOF'
==================== Logbook ====================
# After you run some commands, append your last 5 here:
#   fc -nl -5 >> log.txt
# (fc is a Bash built-in that prints the last N commands without numbers.)
EOF

# 3) Make an initial tech_diary.txt (you will regenerate it after edits)
cat > tech_diary.txt <<'EOF'
=================== My Linux Tech Diary ===================
(You will recreate this after editing files using:)
cat profile.txt commands.txt log.txt > tech_diary.txt

"Keep learning, keep growing!"
===========================================================
EOF

echo "Project skeleton ready at: $(pwd)"
echo "Next steps:"
echo "  - Edit files with nano or vim."
echo "  - Run some commands, then: fc -nl -5 >> log.txt"
echo "  - Merge: cat profile.txt commands.txt log.txt > tech_diary.txt"
echo "  - Zip:   zip linux_project.zip *.txt"
echo "  - Push to GitHub (init, add, commit, remote add, push)."
