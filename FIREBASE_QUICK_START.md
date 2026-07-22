# Firebase Sync Version — FREE Setup (2 Minutes)

You asked: Does it need to pay? **NO. Free forever for you.**

## What you have now:
`index.html` is now **Firebase Sync version** — PC + iPhone Chrome sync instantly.

It will show `⚙️ Firebase Setup Needed` until you paste your config.

## Step-by-step (No payment)

### 1. Create Firebase Project
1. Go to https://console.firebase.google.com
2. Click **Add Project** → Name: `work-checklist` → Uncheck Google Analytics → Create Project
3. Wait, then click Continue

### 2. Enable Login (for sync across devices)
1. Left menu: **Build > Authentication**
2. Click **Get Started**
3. **Sign-in method** tab → Enable:
   - **Email/Password** → Enable → Save
   - **Google** → Enable → Save (optional but easy for iPhone)

### 3. Create Database (FREE)
1. Left menu: **Build > Firestore Database**
2. Click **Create Database**
3. Start in **Test mode** (we will add secure rules later)
4. Location: **asia-southeast1 (Singapore)** — closest to MY Seremban for speed → Enable
5. Wait for provisioning.

### 4. Get Your Free Config
1. Top left gear icon ⚙️ → **Project Settings**
2. General tab → Scroll to **Your apps** → Click Web `</>` icon
3. Register app nickname: `work-checklist` → Don't check Hosting → Register App
4. You will see:
```js
const firebaseConfig = {
  apiKey: "AIza...",
  authDomain: "work-checklist-xxxxx.firebaseapp.com",
  projectId: "work-checklist-xxxxx",
  ...
};
```
5. **COPY** that whole object.

### 5. Paste Config Into Your Repo
1. Open `index.html` in Notepad / VS Code / any text editor
2. Find around line 220:
```js
const firebaseConfig = {
  apiKey: "REPLACE_ME",
  ...
};
```
3. REPLACE entire object with your real config you copied.
4. Save file.

### 6. Push to GitHub (update your Pages site)
```bash
# If you already pushed before:
git add index.html
git commit -m "Add Firebase config - sync enabled"
git push
```
Or just drag and drop `index.html` in GitHub web UI → Commit.

Wait 1-2 min for Pages to rebuild. Refresh `https://YOURNAME.github.io/work-checklist/` — setup warning should be GONE, showing Login box.

### 7. Secure Rules (recommended)
1. In Firebase Console → Firestore Database → **Rules** tab
2. Delete existing rules, paste from file `firestore.rules` in this repo:
```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /tasks/{taskId} {
      allow read, write: if request.auth != null && resource.data.owner == request.auth.uid;
      allow create: if request.auth != null && request.resource.data.owner == request.auth.uid;
    }
  }
}
```
3. Click **Publish**

Now only YOU (logged in user) can see your tasks.

### 8. Test Sync!
1. On **Windows PC Chrome**: open `https://YOURNAME.github.io/work-checklist/` → Create Account with your email → Login → Add task "Test from PC"
2. On **iPhone Chrome App**: open same URL → Login SAME email → You should see "Test from PC" appear instantly! Add "Test from iPhone" → appears on PC instantly.
3. Set your 9AM auto-open Task Scheduler to this GitHub Pages URL (same as before, using `OPEN-FROM-GITHUB.bat`)

### Cost Check
Go to Firebase Console → Usage → It will show 0.00$ and <100 reads/day. Free tier is 50k reads/day. You are safe.

### Troubleshooting
- **Setup warning still shows?** You didn't replace config correctly. Must replace REPLACE_ME values AND push.
- **Login fails?** Make sure Email/Password enabled in Authentication tab.
- **Permission denied when adding task?** Rules not set, or not logged in. Use Test mode temporarily if needed: allow read, write: if true; (but switch back to secure later)
- **iPhone Chrome not syncing?** Make sure you login with SAME email on both devices. Clear: each device under different Google account in Chrome still works if you use same checklist app login email.

### Done!
You now have:
- GitHub Pages hosting (free)
- Firebase cloud sync (free)
- 9AM auto-open on Windows (Task Scheduler)
- Same checklist on iPhone Chrome app - data stored in Firebase cloud, not localStorage anymore.

Your old offline version is still in `dashboard-offline-backup.html` if you ever want it.
