# Work Checklist – Daily 9AM Dashboard (Mon–Fri)

> Check what’s **due / overdue / this week** every weekday at 9:00 AM. Built for Windows PC + iPhone Apple Reminders workflow.

**Live Demo:** `https://YOURUSERNAME.github.io/work-checklist/` _(replace after you enable Pages)_

![Checklist](https://img.shields.io/badge/status-ready-green) ![Offline](https://img.shields.io/badge/offline-works-blue) ![No Build](https://img.shields.io/badge/no%20build-single%20HTML-orange)

### ✨ Features
- 🔴 **Overdue** → check first, 🔵 **Due Today** → 9AM focus, 🟡 **This Week**, ✅ **Completed**
- Categories: Emails, Meetings, Reports, Admin, Follow-ups
- Priorities: High / Medium / Low + Notes/Link field
- Auto 9AM weekday logic (skips Sat/Sun)
- 100% offline, single HTML file, data saved in browser localStorage
- Export / Import backup JSON
- Designed for `both_manual` workflow: keep iPhone Reminders, duplicate top 5 in dashboard

### 🚀 Quick Start (GitHub Pages version - Recommended)

**1. Push this repo to GitHub**
```bash
git init
git add .
git commit -m "Initial 9AM work checklist"
git branch -M main
git remote add origin https://github.com/YOURUSERNAME/work-checklist.git
git push -u origin main
```

**2. Enable GitHub Pages**
- Go to your repo on GitHub > **Settings > Pages**
- Source: **Deploy from a branch** → Branch: **main** / **/(root)**
- Save. Wait 1-2 min. Your URL: `https://YOURUSERNAME.github.io/work-checklist/`

**3. Set 9AM Auto-Open on Windows**
- Open `OPEN-FROM-GITHUB.bat` in Notepad, replace `YOURUSERNAME` with your real username
- Test: Double-click the bat → should open your Pages URL
- Set Task Scheduler:
  - Press `Win + R` → `taskschd.msc`
  - Create Task → Name: `Work Checklist 9AM`
  - Triggers: **Weekly** → Mon-Fri 9:00 AM
  - Actions: Start a program → `OPEN-FROM-GITHUB.bat`
  - OK

Full Windows guide: see `README-Setup-Guide.md`

### 📱 iPhone Bonus
Safari open your Pages URL → Share → Add to Home Screen → now you have an app icon.

### 📁 Files
- `index.html` + `dashboard.html` = Main app (identical)
- `OPEN-FROM-GITHUB.bat` = 9AM auto-opener for Pages URL
- `Setup-9AM-AutoOpen.bat` = Local file opener
- `README-Setup-Guide.md` = Detailed Windows setup
- `GITHUB_SETUP.md` = Why GitHub is practical for you

### 🔒 Privacy
Tasks are stored in **your browser's localStorage**, NOT in the repo. Never commit `*backup*.json` if it contains confidential data (blocked by `.gitignore`).

---
Made for daily Mon-Fri 9AM checks. No backend needed.
