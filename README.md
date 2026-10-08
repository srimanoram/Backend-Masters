# SD Masters 🎓 — Interview & Career Prep (DSA + LLD + HLD + AI Engineering)

Four AI "masters" that coach you to mastery: the three interview rounds (DSA, LLD, HLD — aimed at
SDE-2, useful at any level) plus a from-scratch path into AI engineering. This repo is the shareable **"teachers"** — clone it, drop it on a friend's
machine, open a session in a master's folder, and that master assesses *their* level and tailors
the course to them.

## The four masters + the Interviewer

| Folder | Master | Teaches | How |
|--------|--------|---------|-----|
| `DSA-Master/` | 🧠 **DSA Master** | Coding / Data-Structures-&-Algorithms rounds (Java) | You solve it first; master drills **pattern recognition** + complexity + the spoken process |
| `LLD-Master/` | 🧩 **LLD Master** | Low-Level / Machine-Coding rounds (Java) | You build it, the master reviews hard, then you extend it |
| `HLD-Master/` | 🏛️ **HLD Master** | High-Level / System Design rounds | Framework → drill → mock interviews → scored review |
| `AIEngineer-Master/` | 🤖 **AI Engineer Master** | AI engineering from scratch (ML → LLMs → RAG → agents → production), Python + Java bridge | Predict first, tiny experiment, then the WHY; every phase ends in a build with evals |
| `Interviewer/` | 🎯 **The Interviewer** | *Examiner, not teacher.* Timed mock rounds, company-persona mocks, full loops, HM round | Blind, in-character, scored 1–4 per axis → No Hire … Strong Hire; ledger + readiness score; gap list fed back to the masters |

All four follow the same **Attempt-First Contract**: they pose the problem, *you try first*, and they
only teach the method (with **why** it fits) when you're stuck, partially right, or a better approach
exists — never leading with the answer.

## How it's structured — teachers vs. workspace (important)

```
SDMasters/                  ← TEACHERS repo (this repo): canonical, shareable, stays pristine
├── README.md
├── .gitignore              ← excludes every learner workspace
├── DSA-Master/
│   ├── CLAUDE.md           ← the master's persona + teaching method   (teacher content)
│   └── CURRICULUM.md       ← canonical roadmap, read-only             (teacher content)
├── LLD-Master/
│   ├── CLAUDE.md
│   └── CURRICULUM.md
├── HLD-Master/
│   ├── CLAUDE.md
│   └── CURRICULUM.md
├── AIEngineer-Master/
│   ├── CLAUDE.md
│   └── CURRICULUM.md
└── Interviewer/
    ├── CLAUDE.md           ← examiner persona + blind rules + round protocol
    ├── RUBRICS.md          ← scales, verdicts, readiness, cadence, scorecard template
    └── COMPANIES.md        ← company/archetype interviewer profiles
```

When you start learning, the master sets up a **workspace** — a *separate* folder with its *own*
git repo — that holds **all of your work**: your `PROGRESS.md` (a copy of the curriculum you tick
off), your notes, and your code. The teachers repo's `.gitignore` excludes it, so:

> **Your progress never touches the shared teachers repo or the creator's branch.** Everyone who
> uses these teachers keeps their own work in their own repo/path.

## How to use

```
cd <path>/SDMasters/DSA-Master    → open Claude Code here → "Let's begin."
cd <path>/SDMasters/LLD-Master    → open Claude Code here → "Let's begin."
cd <path>/SDMasters/HLD-Master    → open Claude Code here → "Let's begin."
cd <path>/SDMasters/AIEngineer-Master → open Claude Code here → "Let's begin."
cd <path>/SDMasters/Interviewer   → open Claude Code here → "Mock: <round|company|loop> ..."  (one mock per session)
```

> Suggested order for interview prep: **DSA → LLD → HLD** (DSA gates most first rounds; HLD matters
> most at SDE-2+). **AI Engineer** is a separate career track — take it alongside or after. Each
> master is independent — start wherever you need.

**First session, the master will:**
1. **Set up your workspace** — ask whether to *(a)* create a new git repo for your work
   *(recommended)*, *(b)* use an existing folder/repo (e.g. an existing Maven project), or
   *(c)* just keep local files with no git.
2. **Assess your level** (~10 min: a few questions + one small baseline task) → classify you as
   Beginner / Knows-basics / Intermediate → **tailor the roadmap to you** (re-assessed over time).

Then every session it teaches the **WHY**, defines every term, makes you think/talk/build, keeps
your `PROGRESS.md` updated, and **commits your work to your workspace repo** (clean messages, no AI
attribution, `--local` config) — never to the teachers repo.

## New laptop? One command
> Full step-by-step (install, same-path rule, secrets, daily backup): **[NEW-LAPTOP.md](NEW-LAPTOP.md)**.

```powershell
git clone https://github.com/srimanoram/Backend-Masters.git E:\SDMasters
pwsh -File E:\SDMasters\setup.ps1                       # owner: clones private workspaces into place
pwsh -File E:\SDMasters\setup.ps1 -WithClaudeState      # ...plus Claude Code memory + session transcripts
pwsh -File E:\SDMasters\setup.ps1 -SharedOnly           # a friend: teachers only
```
`setup.ps1` clones each learner workspace into its master folder, writes the `.workspace` markers, and
recreates the AI venv. Edit its `$Workspaces` table to point at your own repos. Keep the project at the
same path (`E:\SDMasters`) if you want Claude Code sessions to resume.

## Sharing this with a friend
1. Push this `SDMasters` folder to a git remote (GitHub/GitLab), or zip and send it.
2. They clone it, `cd` into `HLD-Master` or `LLD-Master`, open Claude Code, say "Let's begin."
3. The master sets up *their own* workspace and assesses *them* — your repo stays untouched.

> LLD is pure-Java-first; Spring comes only after fundamentals are solid (`CURRICULUM.md` Phase 6).
> AI Engineer is Python-first (the ecosystem's language) with a Spring AI / LangChain4j bridge so what
> you learn ships at a Java day job.

## Knowing when you're done
The masters teach; **the Interviewer grades**. Open a *fresh* session in `Interviewer/` for each mock
(so no interview leaks into the next), get a scorecard and a verdict, and let the ledger's **readiness
score** (3 consecutive passes) tell you when a course moves to maintenance mode. The Interviewer writes
a gap list that every master reads at its next session start, so a failed mock becomes the next lesson.
