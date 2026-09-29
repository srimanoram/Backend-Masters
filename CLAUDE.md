# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

`SDMasters/` is the shared **TEACHERS repo**: four AI coaching personas, one per folder
(`DSA-Master/`, `LLD-Master/`, `HLD-Master/` for interview rounds; `AIEngineer-Master/` for an AI
engineering career track). It contains no application code of its own.
Each master folder tracks exactly two files, `CLAUDE.md` (the persona and teaching method) and
`CURRICULUM.md` (the read-only roadmap template). The root `.gitignore` ignores everything else
under each master folder and re-includes only those two files.

A session is normally opened **inside a master folder**, where that folder's `CLAUDE.md` takes over
as the persona. This root file matters when a session is opened at the repo root, for example to edit
the course content itself.

## Two roles, two repos: never mix them

- **Course creator** (this repo's owner) edits `CLAUDE.md` / `CURRICULUM.md` and commits **here**.
- **Learner** work (progress ledger, notes, code, flashcards) lives in a **workspace**: a separate
  folder with its **own git repo**. A master never commits learner work into the teachers repo, and
  never edits teacher files while acting as a coach.

Per-master workspace resolution:
- `<Master>/.workspace` (gitignored, one line) holds the workspace path relative to the master folder.
  Current values: DSA, HLD and AIEngineer use `workspace`; LLD uses `./lld-master`.
- The workspace holds `PROGRESS.md` (a copy of `CURRICULUM.md` the learner ticks off), `cards.csv`
  (Anki-importable, gitignored inside the workspace), and code or notes.
- Workspace commits use `git config --local` identity, plain messages prefixed `DSA:` / `LLD:` /
  `HLD:`, and **no `Co-Authored-By` or AI attribution** (the masters override the default attribution).

## Shared teaching architecture (identical across all four masters)

Every master `CLAUDE.md` follows the same section skeleton, so a change to the model usually needs to
be applied to all four files in parallel:

1. **Repo model** block: teachers repo pristine, workspace separation.
2. **Attempt-First Contract**: pose the problem, learner tries first, progressive hints
   (signal, then category, then method with WHY), never lead with the answer.
3. **§0a workspace setup** (three options: new git repo, existing folder, no git) then
   **§0b level assessment** (calibration questions plus one baseline task, classify, write a tailored
   plan into `PROGRESS.md` Phase 0).
4. A domain **cheat sheet** that every lesson maps back to: UMPIRE plus the signal-to-pattern table
   (DSA), the 6-step LLD flow plus SOLID and the top-8 patterns (LLD), FRAADTT 7-step framework plus
   the 5 grading axes (HLD), the 6-layer stack map plus the 5 Questions and the prompt/RAG/fine-tune/agent
   Decision Ladder (AIEngineer).
5. **Flashcards** section: append `"front","back"` lines to `<workspace>/cards.csv` each session.
6. **Session protocol**: start by reading `.workspace` and `PROGRESS.md`, surface due Review Queue
   items; end by refreshing the Dashboard, mastery states, Review Queue, Scorecards, and committing.
7. **Git and bookkeeping** and **Hard rules**.

Every `CURRICULUM.md` shares the same progress-tracking scaffolding, which the session protocol
depends on: a **Progress Dashboard** table, **4-state mastery** marks (`☐` not started, `◔` learning,
`◑` practiced, `●` mastered; `[x]` only at `●`), numbered phases, a **Spaced-Repetition Review
Queue** table (escalating +3d, +1w, +3w, +2m), **Mock Scorecards**, weak-spots, and a session log.
If you rename or restructure any of these blocks in one curriculum, the matching `CLAUDE.md` session
protocol and the other two curricula need the same change.

## Editing conventions for teacher content

- Keep the four masters symmetric: same section order, same contract wording, same bookkeeping.
  Domain-specific content (cheat sheet, baseline task, deliverable layout) is the only place they
  should differ.
- Scaffolding for learners is minimal by design: a `main`, inputs, and one empty method. Logic is
  written by the learner, never pre-filled by the master.
- Java is the default language for DSA and LLD. LLD is pure Java first; Spring only appears in
  curriculum Phase 6. AIEngineer is Python first with a Java bridge (Spring AI / LangChain4j) taught
  only after the Python version of a concept is solid. It also carries a **Talk-Less Rule** (short
  turns, one idea, hand over with a question) that the learner explicitly asked for.
- Environment for the current creator is Windows with PowerShell. Chain commands with `;` in
  PowerShell or `&&` in the Bash tool. Files use LF; git may warn about CRLF conversion, which is fine.

## Commands

There is nothing to build or test in the teachers repo itself. Commands below apply to learner
workspaces and are documented in the master files so they stay in sync with what the masters tell
learners.

DSA workspace (plain files, no build tool; the installed JDK is Java 8 so avoid newer syntax):
```sh
cd DSA-Master/workspace
javac -d out src/main/java/com/sdmasters/dsa/<pattern>/<Class>.java
java -cp out com.sdmasters.dsa.<pattern>.<Class>
```

LLD workspace (Maven wrapper, Spring Boot parent, `java.version` 25 in the pom; `mvn` is not on
PATH, so use the wrapper):
```sh
cd LLD-Master/lld-master
./mvnw -q compile exec:java -Dexec.mainClass=com.sdmasters.lld.purejava.<problem>.<Demo>
./mvnw -q -Dtest=<TestClassName> test        # run a single test
```
On PowerShell use `.\mvnw.cmd` instead of `./mvnw`.

AIEngineer workspace (Python 3.14 on PATH, plain venv, no `uv` or `ollama` installed yet; API keys
live in the workspace `.env`, which must stay gitignored):
```sh
cd AIEngineer-Master/workspace
python -m venv .venv && source .venv/Scripts/activate   # PowerShell: .\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
python src/<phase>_<topic>/<file>.py
```

Check the pending teacher-repo change before committing:
```sh
git status --short && git diff
```

## Known stray files (ignored by git, safe to leave or clean)

- `LLD-Master/setup_state.json` is an unrelated build-setup state file that landed here by accident.
- `LLD-Master/lld-master/CLAUDE.md` and `CURRICULUM.md` are byte-identical copies of the teacher
  files inside the learner workspace; the teacher copies in `LLD-Master/` are canonical.
- `DSA-Master/out/` and `*/.idea/` are IDE and compiler output.
