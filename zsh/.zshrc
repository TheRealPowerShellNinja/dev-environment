# ===============================================
# ~/.zshrc — Shell bootstrap
# Purpose : Load modular Zsh configuration files
# Updated : 2026-04-08
#
# Modules (logic lives here):
#   ~/.zsh_functions      # core + discoverability (fn_list, fn_help)
#   ~/.zsh_autosave       # Obsidian autosave + LaunchAgent control
#   ~/.zsh_jetbrains      # IDE launchers (IntelliJ, PyCharm, WebStorm)
#   ~/.zsh_obsidian_core  # (future) Obsidian helpers
#   ~/.zsh_git            # (future) Git helpers
#   ~/.zsh_system         # (future) system utilities
# ===============================================

# --- Homebrew (ARM macs) ---
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Java (OpenJDK 21 via Homebrew) ---
export JAVA_HOME="/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# --- Core PATH (dedupe) ---
typeset -U path

# --- Shell options ---
setopt interactivecomments
setopt PROMPT_SUBST

# --- Completion (fast, cached) ---
autoload -Uz compinit
compinit -C

# --- Extra paths (idempotent) ---
if [[ ":$PATH:" != *":$HOME/.lmstudio/bin:"* ]]; then
  export PATH="$PATH:$HOME/.lmstudio/bin"
fi

# --- Source modular files if present ---
for f in \
  ~/.zsh_theme \
  ~/.zsh_aliases \
  ~/.zsh_functions \
  ~/.zsh_autosave \
  ~/.zsh_jetbrains \
  ~/.zsh_obsidian_core \
  ~/.zsh_git \
  ~/.zsh_system
do
  [[ -f "$f" ]] && source "$f"
done

# --- Startup debug (optional) ---
[[ -n "$ZSH_DEBUG" ]] && echo "🌀 Zsh loaded at $(date '+%H:%M:%S')"
