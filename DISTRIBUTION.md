# Distribution Guide

This document explains how to package and share the Copilot Learning Lab.

---

## For GitHub

### Setup
1. Create a new repository named `copilot-learning-lab`
2. Clone it locally
3. Copy all files from this folder into the repository
4. Commit and push:
   ```bash
   git add .
   git commit -m "Initial commit: Complete Copilot CLI learning lab for beginners"
   git push origin main
   ```

### GitHub Configuration
- **Description:** "A beginner-friendly learning lab for GitHub Copilot CLI and command-line basics"
- **Topics:** `copilot`, `cli`, `learning`, `beginner-friendly`, `github`
- **License:** MIT
- **README:** Already optimized for GitHub display

---

## For Standalone Distribution

### What's Included
```
copilot-learning-lab/
├── README.md                          # Main guide
├── GETTING_STARTED.md                 # Quick start
├── CONTRIBUTING.md                    # How to contribute
├── LICENSE                            # MIT License
├── .gitignore                         # Version control
├── cheatsheet.md                      # Command reference
├── exercises/                         # 5 learning exercises
│   ├── 01-ask-questions/
│   ├── 02-read-and-explain/
│   ├── 03-edit-files/
│   ├── 04-slash-commands/
│   └── 05-plan-and-build/
└── sandbox/                           # Practice area
    ├── README.md
    └── daily-growth-journal.md        # Reflection template
```

### Creating a ZIP Package

**Windows:**
```powershell
Compress-Archive -Path "C:\Users\<username>\copilot-learning-lab" -DestinationPath "copilot-learning-lab.zip"
```

**Mac/Linux:**
```bash
zip -r copilot-learning-lab.zip copilot-learning-lab/
```

### Sharing the ZIP
- Upload to GitHub Releases
- Share via cloud storage (Google Drive, Dropbox, OneDrive)
- Include download link in social media/forums

---

## Verification Checklist

Before distributing, verify:

- [ ] No personal file paths remain (check README, exercises, files)
- [ ] No screenshots with sensitive data
- [ ] No hard drive recovery references
- [ ] All 5 exercises are complete and clear
- [ ] Journal template is genericized
- [ ] LICENSE file present
- [ ] CONTRIBUTING.md is welcoming
- [ ] GETTING_STARTED.md has correct instructions
- [ ] README has no personal references

---

## Support

If users have questions or issues:
1. Direct them to GETTING_STARTED.md
2. Encourage opening issues on GitHub
3. Point to CONTRIBUTING.md for how to help improve it

---

Happy sharing! 🎉
