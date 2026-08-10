# Bay Area Monthly Venue & Adult Nights Planner

Interactive monthly map of museums, wineries, oddities, and — above all — adult nights and after-hours events across San Francisco, Alameda, Santa Clara, and San Mateo counties.

Open the planner: https://poosquad82.github.io/afterhours-monthly-planner/

## How it updates
1. The `monthly-venue-adult-nights` scheduled task (Claude, 1st of each month, 8 AM) rebuilds `Monthly Events\Monthly Planner <YYYY-MM>.html` in the Obsidian vault and copies it here as `index.html`.
2. Double-click `update-site.bat` (or Commit + Push in GitHub Desktop). It clears any stale git lock files, commits everything, and pushes. The site refreshes in about a minute.

## One-time setup (if the repo doesn't exist yet)
1. Create a **public** repo named `afterhours-monthly-planner` at github.com/poosquad82.
2. First push: open GitHub Desktop → Add local repository → this folder → Publish.
3. On GitHub: Settings → Pages → Deploy from branch → `main` / root.

Data sources and rules live in the vault: `Monthly Events\Venue Registry - Four Counties.md` (Source playbook section).
