# SD Masters 🎓 — Design Interview Prep (HLD + LLD)

Two AI "masters" that coach you to mastery of the two design-interview rounds (aimed at SDE-2,
useful at any level). This repo is the shareable **"teachers"** — clone it, drop it on a friend's
machine, open a session in a master's folder, and that master assesses *their* level and tailors
the course to them.

## The two masters

| Folder | Master | Teaches | How |
|--------|--------|---------|-----|
| `HLD-Master/` | 🏛️ **HLD Master** | High-Level / System Design rounds | Framework → drill → mock interviews → scored review |
| `LLD-Master/` | 🧩 **LLD Master** | Low-Level / Machine-Coding rounds (Java) | You build it, the master reviews hard, then you extend it |

## How it's structured — teachers vs. workspace (important)

```
SDMasters/                  ← TEACHERS repo (this repo): canonical, shareable, stays pristine
├── README.md
├── .gitignore              ← excludes every learner workspace
├── HLD-Master/
│   ├── CLAUDE.md           ← the master's persona + teaching method   (teacher content)
│   └── CURRICULUM.md       ← canonical roadmap, read-only             (teacher content)
└── LLD-Master/
    ├── CLAUDE.md
    └── CURRICULUM.md
```

When you start learning, the master sets up a **workspace** — a *separate* folder with its *own*
git repo — that holds **all of your work**: your `PROGRESS.md` (a copy of the curriculum you tick
off), your notes, and your code. The teachers repo's `.gitignore` excludes it, so:

> **Your progress never touches the shared teachers repo or the creator's branch.** Everyone who
> uses these teachers keeps their own work in their own repo/path.

## How to use

```
cd <path>/SDMasters/HLD-Master    → open Claude Code here → "Let's begin."
cd <path>/SDMasters/LLD-Master    → open Claude Code here → "Let's begin."
```

**First session, the master will:**
1. **Set up your workspace** — ask whether to *(a)* create a new git repo for your work
   *(recommended)*, *(b)* use an existing folder/repo (e.g. an existing Maven project), or
   *(c)* just keep local files with no git.
2. **Assess your level** (~10 min: a few questions + one small baseline task) → classify you as
   Beginner / Knows-basics / Intermediate → **tailor the roadmap to you** (re-assessed over time).

Then every session it teaches the **WHY**, defines every term, makes you think/talk/build, keeps
your `PROGRESS.md` updated, and **commits your work to your workspace repo** (clean messages, no AI
attribution, `--local` config) — never to the teachers repo.

## Sharing this with a friend
1. Push this `SDMasters` folder to a git remote (GitHub/GitLab), or zip and send it.
2. They clone it, `cd` into `HLD-Master` or `LLD-Master`, open Claude Code, say "Let's begin."
3. The master sets up *their own* workspace and assesses *them* — your repo stays untouched.

> LLD is pure-Java-first; Spring comes only after fundamentals are solid (`CURRICULUM.md` Phase 6).
