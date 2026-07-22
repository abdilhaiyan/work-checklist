# Work Checklist - Daily 9 AM Setup (Mon-Fri)

You asked for: checklist to check daily on computer at 9:00 AM except weekends, showing what's due or not.

✅ Built for your setup:
- **Windows PC** (work) + iPhone with Apple Reminders
- **Categories**: Emails, Meetings, Reports, Admin, Follow-ups
- **View**: Overdue / Due Today / This Week / Upcoming / Completed
- **Features**: Priorities (High/Med/Low) + Notes/Link field

## Files Included
1. `dashboard.html` - Main checklist. Works offline, no install. All data saves on your PC.
2. `Setup-9AM-AutoOpen.bat` - One-click opener. Must be in same folder as dashboard.html
3. This README

## Quick Start (1 minute)
1. Download the whole `work-checklist` folder to your PC, e.g. `C:\Users\YourName\Documents\work-checklist\`
2. Double-click `dashboard.html` - it opens in Chrome/Edge.
3. Add your real tasks (delete demo tasks). It auto-saves.

## How to Make It Auto-Open at 9 AM Mon-Fri (Windows Task Scheduler)

### Option A: Recommended - Task Scheduler (2 minutes)

1. Press `Win + R`, type `taskschd.msc`, press Enter
2. On right panel, click **Create Task...** (not Basic Task)
3. **General tab:**
   - Name: `Work Checklist 9AM`
   - Check: `Run only when user is logged on`

4. **Triggers tab > New:**
   - Begin task: On a schedule
   - Daily, Start: Today 9:00:00 AM
   - Check **Weekly** actually? Better use:
     - Select **Weekly**, check **Monday, Tuesday, Wednesday, Thursday, Friday**
     - Time: **9:00:00 AM**
     - OK

5. **Actions tab > New:**
   - Action: Start a program
   - Program/script: Browse to `Setup-9AM-AutoOpen.bat` (full path, e.g. `C:\Users\...\work-checklist\Setup-9AM-AutoOpen.bat`)
   - Start in: paste folder path without file, e.g. `C:\Users\...\work-checklist\`
   - OK

6. **Conditions tab:** Uncheck "Start only on AC power" if laptop
7. **Settings tab:** Check "Allow to run on demand"
8. Click OK, enter password if asked.

Test: Right-click task > Run. It should open dashboard.html.

### Option B: Simple Startup Folder (Opens when you login, not exactly 9AM)

1. Press `Win + R`, type `shell:startup`, Enter
2. Copy `dashboard.html` shortcut or `Setup-9AM-AutoOpen.bat` into that folder
3. It will open every login. You can manually check at 9 AM.

## iPhone Reminders + PC Dashboard Workflow

Because you use Apple Reminders on iPhone and they don't auto-sync to Windows easily:

**Best flow:**
1. iPhone: Capture quickly in Apple Reminders as usual
2. PC at 9 AM: Dashboard auto-opens. Spend 2 min adding Top 5 due today (copy manually).
3. Use Dashboard for "What's due or not" logic - Overdue is red, Today is blue.
4. Check off tasks in Dashboard. At end of day, optional: check off same in iPhone.

**If you want sync:**
Install **iCloud for Windows** from Microsoft Store, sign in, enable Reminders. Then you can open https://www.icloud.com/reminders side-by-side with dashboard.html.

## Features in Dashboard

- **Add**: Title + Due Date (defaults to today) + Category + Priority + Notes/Link
- **Due Logic**: 
  - Overdue: due date < today
  - Due Today: due date = today
  - This Week: next 6 days
  - Upcoming: later
- **Filters**: Click pills to filter by Emails/Meetings/etc or High Priority
- **Edit/Delete**: ✏️ to edit (prompt), 🗑️ to delete
- **Complete**: Click checkbox. Moves to Completed section.
- **Progress bar**: Shows % of today cleared
- **Export/Import**: Backup JSON, use on another PC
- **Auto weekend skip**: Shows note on Sat/Sun that no check required

## Pro Tips

- Bookmark `dashboard.html` in Chrome: Ctrl+D
- Pin to Taskbar: Right-click dashboard.html > Properties > Change icon, or drag Chrome tab
- Morning routine: 
  1) 9:00 auto-open
  2) Clear Overdue
  3) Do Due Today High priority first
  4) Plan This Week

## Troubleshooting

- **Bat opens Notepad?** Right-click bat > Open with > Windows Explorer
- **Doesn't auto-open?** Check Task Scheduler history, ensure PC is on at 9 AM (not sleep). Set Condition to "Wake computer to run"
- **Lost tasks?** Data is in browser localStorage. Don't clear site data for file:// . Use Export backup weekly.

## Want upgrades?

I can also build:
- Version that syncs to Google Sheets
- Version that sends email at 9 AM
- Version as a Chrome Extension
- Version that reads .ics calendar

Let me know!
