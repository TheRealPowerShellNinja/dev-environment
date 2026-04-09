# Dev Environment

A modular, discoverable, and safety-focused developer environment built in Zsh, designed to evolve across multiple shells and platforms.

---

## 🚀 Overview

This project transforms a traditional shell setup into a structured system with:

- Dynamic command discovery
- PowerShell-style help inside Zsh
- Safety controls for destructive operations
- Modular architecture for scalability
- Cross-shell design (Zsh → PowerShell → Bash)

This repository represents the **Zsh implementation (Phase 1)** of a broader, multi-shell developer environment.

---

## 🧠 Design Philosophy

This system is built around three core principles:

### 1. Discoverability
You should not have to remember everything.

- `fn_list` → browse available commands
- `fn_help <function>` → self-documenting help system
- Consistent naming conventions (`autosave_*`, `jb_*`, etc.)
- Tab completion support

---

### 2. Self-Documenting Functions

Functions include structured metadata:

```bash
# @synopsis:
# @description:
# @parameter:
# @example:
# @notes:

Accessible via:

fn_help autosave_config


⸻

3. Safety First

Destructive operations are:
	•	Explicitly named (PURGE_INTELLIJ, etc.)
	•	Interactive (manual confirmation required)
	•	Context-aware (IDE-specific validation)
	•	Verified after execution

⸻

🧩 Architecture

zsh/
├── .zshrc             # Bootstrap and module loader
├── .zsh_functions     # Core helpers (fn_list, fn_help)
├── .zsh_jetbrains     # JetBrains tooling and maintenance
├── .zsh_autosave      # Obsidian autosave system
├── .zsh_git           # Git helpers (future)
└── .zsh_system        # System utilities (future)


⸻

⚙️ Key Features

🔍 Command Discovery

fn_list

Lists all available public functions across modules.

⸻

📖 Help System

fn_help autosave_config
fn_help jb_recents_purge ij_train_java

Provides structured, readable help output.

⸻

🧹 Safe Maintenance Commands

JetBrains utilities include:
	•	jb_trust_show
	•	jb_recents_show
	•	jb_recents_purge
	•	jb_workspace_purge

With:
	•	Interactive confirmation
	•	Exact token matching
	•	Post-operation verification

⸻

🧠 Intelligent CLI UX
	•	Adaptive help formatting (single vs multiple functions)
	•	Clean spacing and separators
	•	Module-based organization
	•	Consistent command naming patterns

⸻

🛠 Installation

git clone https://github.com/<your-username>/dev-environment.git
cp zsh/* ~/
source ~/.zshrc


⸻

🔮 Roadmap

Future phases include:
	•	PowerShell Core implementation (cross-platform)
	•	Bash implementation
	•	Module filtering (fn_help -module)
	•	Logging for maintenance operations
	•	Plugin-style module loading

⸻

📌 Why This Exists

Most shell environments evolve organically and become hard to navigate over time.

This project takes a different approach:
	•	Design for discoverability
	•	Build for safety
	•	Structure for long-term maintainability

⸻

👨‍💻 Author

David Temple

⸻

💡 Final Thought

This started as dotfiles.

It evolved into a system.

---

# 🧠 Why this version is stronger

This version:

- Positions you as a **system designer**, not a config tinkerer  
- Clearly shows **intent + architecture + roadmap**  
- Connects directly to your future PowerShell/Bash expansion  
- Reads like something someone would actually star on GitHub  

---

# 🚀 Optional next step (high impact)

After you push:

1. Add **1–2 screenshots**:
   - `fn_list`
   - `fn_help autosave_config`

2. Add a short GIF later (even better)

---

If you want next:
👉 I’ll refine your LinkedIn post to match this stronger positioning (it’ll hit *much* harder now)