HOOKS_DIR="$HOME/.dotfiles/.git/hooks"

if [ ! -d "$HOOKS_DIR" ]; then
echo "The $HOOKS_DIR directory does not exist. Verify that you are in the correct folder and that git is initialized."
exit 1
fi

POST_MERGE_HOOK="$HOOKS_DIR/post-merge"

cat > "$POST_MERGE_HOOK" << 'EOF'
#!/bin/sh
SCRIPT_PATH="$HOME/.dotfiles/sync_files.sh"

if [ -f "$SCRIPT_PATH" ]; then
echo "Running the Synchronization Script..."
/bin/bash "$SCRIPT_PATH"
else
echo "The synchronization script was not found."
fi
EOF

chmod +x "$POST_MERGE_HOOK"

echo "The post-merge hook has been installed successfully."
