# New laptop — get everything back in 10 minutes

This restores the **teachers**, all your **workspaces** (progress, code, notes, flashcards, mock
ledger), and your **Claude Code memory + session transcripts**, so you continue exactly where you left
off. Everything lives under your personal GitHub account `srimanoram`.

## 0. Install (once)
- **Git**, **GitHub CLI** (`gh`), **PowerShell 7** (`pwsh`), **Claude Code**.
- **Java** (DSA uses the JDK on PATH; LLD uses its Maven wrapper) and **Python 3.12+** (AI track).
- Log in: `gh auth login` → GitHub.com → HTTPS → browser → account **srimanoram**.

## 1. Clone the teachers to the SAME path
```powershell
git clone https://github.com/srimanoram/Backend-Masters.git E:\SDMasters
```
> The path matters. Claude Code stores sessions per project path (`E--SDMasters`, `E--SDMasters-DSA-Master`, ...).
> A different drive or folder name means `/resume` will not find your old sessions. If `E:` does not exist,
> create a folder and map it as `E:` with `subst E: C:\path\to\folder`, or accept starting fresh sessions
> (your `PROGRESS.md` files still carry all progress).

## 2. One command: workspaces + Claude state
```powershell
pwsh -File E:\SDMasters\setup.ps1 -WithClaudeState
```
What it does:
- clones each private workspace into its master folder and writes the `.workspace` markers

  | Master | Repo | Lands at |
  |---|---|---|
  | DSA | `sdm-dsa-workspace` | `DSA-Master\workspace` |
  | LLD | `lld-practice` | `LLD-Master\lld-master` |
  | HLD | `sdm-hld-workspace` | `HLD-Master\workspace` |
  | AI Engineer | `sdm-ai-workspace` | `AIEngineer-Master\workspace` |
  | Interviewer | `sdm-interviewer-ledger` | `Interviewer\workspace` |
- recreates the AI Python venv and installs `requirements.txt`
- clones `sdm-claude-state` to `E:\SDMasters-claude-state` and runs its `restore.ps1`, which copies memory
  notes + transcripts into `%USERPROFILE%\.claude\projects\` and sets `cleanupPeriodDays: 365` so they
  are never auto-deleted

## 3. Secrets (never in git)
- AI workspace: `copy AIEngineer-Master\workspace\.env.example AIEngineer-Master\workspace\.env` and
  put your API key in it.
- Git identity is per repo (`git config --local`), already set in each cloned workspace.

## 4. Check it worked
```powershell
cd E:\SDMasters\DSA-Master
claude
```
Type `/resume` and your old sessions should be listed. Or just say "Let's begin." and the master picks up
from `workspace\PROGRESS.md` and the Interviewer's `GAPS.md`.

## 5. Daily habit on ANY laptop
At the end of a study day, back up the Claude state (workspaces are committed by the masters themselves):
```powershell
pwsh -File E:\SDMasters-claude-state\sync.ps1 -Push
```
It mirrors the transcripts, **redacts** anything that looks like a secret, refuses to commit if something
slips through, and pushes. Workspaces: `git push` inside the workspace if the master has not already.

## If something is missing
- Session not in `/resume` → path differs from `E:\SDMasters`, or `restore.ps1` was not run. Re-run
  `pwsh -File E:\SDMasters-claude-state\restore.ps1`.
- A master cannot find the workspace → the `.workspace` marker is missing; re-run `setup.ps1`.
- Transcripts are a convenience. The source of truth is each workspace's `PROGRESS.md` + git, and the
  memory notes in `sdm-claude-state`. Nothing important is lost if a transcript is.

## Sharing with a friend
They need only the teachers: `setup.ps1 -SharedOnly`. Each master creates their own fresh workspace.
