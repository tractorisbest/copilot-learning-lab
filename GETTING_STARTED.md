# Getting Started with Copilot CLI Learning Lab

Welcome! Here's how to get up and running in **10 minutes**.

## Step 1 — Install Copilot CLI (if you don't have it)

### Windows
```powershell
winget install GitHub.Copilot
```

### Mac
```bash
brew install copilot-cli
```

### Linux
```bash
curl -fsSL https://gh.io/copilot-install | bash
```

**Check if it's installed:**
```
copilot --version
```

## Step 2 — Login to GitHub

Launch Copilot for the first time:
```
copilot
```

You'll be asked to log in. Follow the prompts — it uses your GitHub account.

## Step 3 — Clone or Download This Lab

**Option A — Git (recommended):**
```bash
git clone <repository-url>
cd copilot-learning-lab
```

**Option B — Download as ZIP:**
- Visit the GitHub repository
- Click `Code → Download ZIP`
- Extract the folder
- Navigate into it in your terminal

## Step 4 — Launch Copilot in This Folder

```bash
copilot
```

You'll see a welcome message. You're ready!

## Step 5 — Start the Exercises

Read the first exercise:
```
@exercises/01-ask-questions/README.md show me what to do
```

Then follow along! Each exercise builds on the last.

---

## Quick Command Reference

| Command | What it does |
|---|---|
| `copilot` | Launch Copilot in this folder |
| `/help` | Show all available commands |
| `/model` | Switch AI models |
| `/plan` | Create a plan before acting |
| `/diff` | See what files changed |
| `Ctrl+C` (2x) | Exit Copilot |
| `@filename` | Share a file with Copilot |

---

## What You'll Learn

After the 5 exercises, you'll be able to:
- Ask Copilot anything in plain English
- Use the `@` symbol to share files
- Ask Copilot to edit and create files
- Use special slash commands
- Plan and build projects from scratch

**Time commitment:** 1-2 hours total (10-30 min per exercise)

---

## Troubleshooting

**Q: Command `copilot` not found**
- You might need to restart your terminal after installation
- Or reinstall: `winget install GitHub.Copilot` (Windows)

**Q: I can't log in**
- Make sure you have an active GitHub Copilot subscription
- See [GitHub Copilot plans](https://github.com/features/copilot/plans)

**Q: I'm confused about something**
- Open an issue on GitHub
- Or ask Copilot directly! Type your question and see what it suggests

---

## Next Steps

1. ✅ Read Exercise 1
2. ✅ Work through all 5 exercises
3. ✅ Explore the Sandbox folder
4. ✅ Use Copilot on real projects!

**Happy learning!** 💙
