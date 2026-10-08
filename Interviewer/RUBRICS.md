# RUBRICS.md — Scoring, verdicts, readiness, and the scorecard template

> Read-only teacher content. The Interviewer grades **every** mock from this file so scores are
> comparable over time. Change a rubric here and the ledger history stops being comparable, so
> edit rarely and note the date.

## 1. The scale (same for every axis, every round)

| Score | Meaning | What it looks like |
|-------|---------|--------------------|
| **1** | Below bar | Missing, wrong, or needed to be told |
| **2** | Approaching | Got there with heavy nudging, or partially |
| **3** | At bar (SDE-2) | Did it unaided, cleanly, with minor gaps |
| **4** | Above bar | Did it unaided *and* anticipated the follow-up / trade-off |

**Round verdict** from the axis scores:
- **Strong Hire** — average ≥ 3.5 and no axis below 3
- **Lean Hire** — average ≥ 3.0 and no axis at 1
- **Lean No** — average ≥ 2.3, or any single axis at 1 with the rest ≥ 3
- **No Hire** — otherwise
**Pass** = Lean Hire or better.

## 2. Round rubrics (axes + the follow-ups a real interviewer asks)

### 2a. DSA / coding round (45 min, 1 medium + follow-up, or 2 problems)
| Axis | 3 looks like |
|------|--------------|
| Understanding | Clarifies input range, duplicates, sorted?, return spec; writes an example + an edge case |
| Pattern & approach | Names a brute force with complexity, then the optimal pattern *and why the signal points to it* |
| Implementation | Clean, runs on the examples, handles the listed edge cases, no off-by-one left |
| Complexity | States time **and** space unprompted, correctly |
| Communication | Narrates continuously; takes a hint gracefully; manages the clock |
Allowed nudges: one signal hint ("notice the array is sorted") if silent > 5 min; one bug pointer.
Follow-ups: "what if the input doesn't fit in memory?", "what changes if duplicates are allowed?",
"can you do it in O(1) space?"

### 2b. LLD / machine-coding round (90 min, working code required)
| Axis | 3 looks like |
|------|--------------|
| Requirements | Clarifies scope, writes it down, scopes ruthlessly |
| Design | Entities/responsibilities right; composition over inheritance; variation points isolated (a pattern where it earns it) |
| Working code | Runnable demo of the happy path + 1–2 edge cases by the 70-min mark |
| Extensibility | Absorbs the mid-round requirement change without rewriting existing classes |
| Code quality & communication | Names, exceptions, concurrency where relevant; explains decisions on request |
Allowed nudges: none on design; one reminder of time if no running code by 60 min.
Mandatory curveball at ~55 min: one new requirement (e.g. "add a second payment type", "multiple floors").

### 2c. HLD / system design round (45 min)
| Axis | 3 looks like |
|------|--------------|
| Requirements | Functional + non-functional stated before design; assumptions written |
| Structure | Follows a framework; ~5 min reqs/estimates, ~10 architecture, rest deep dives |
| Technical depth | Justifies each component; goes 2 levels down on the bottleneck when pushed |
| Communication | Drives the conversation; diagram is readable; handles pushback |
| Trade-offs | Says "X over Y because Z given constraint W"; never "best" |
Allowed nudges: one redirect if stuck > 5 min ("let's move to the data model").
Mandatory pushback: challenge one decision ("why not SQL here?", "what breaks at 10× traffic?").

### 2d. AI-engineer design round (45 min: design an AI feature + fundamentals probe)
| Axis | 3 looks like |
|------|--------------|
| Problem framing | Input → output as a signature; where the knowledge comes from; picks the right rung (prompt / RAG / fine-tune / agent) with reasons |
| Architecture | Data flow, model choice, retrieval/tools, caching, cost and latency named |
| Evaluation | Proposes an eval set + metric + judge; knows how they'd detect regression |
| Failure & safety | Hallucination, prompt injection, cost blow-up, provider outage: named with mitigations |
| Fundamentals | Explains 2 probed concepts (e.g. attention, embeddings, temperature, LoRA) with the why |
Allowed nudges: one ("how would you know it's right?") if evals are never mentioned by 25 min.

### 2e. Hiring Manager / behavioural round (30 min)
| Axis | 3 looks like |
|------|--------------|
| Structure | STAR: situation, task, action, result; under 3 min per story |
| Specificity | Numbers, named decisions, what *they* did vs the team |
| Ownership | "I decided / I was wrong / I fixed" language; no blame |
| Self-awareness | Real failure story with a real lesson; knows own gaps |
| Communication & motivation | Clear, concise; credible "why this role/company" |
Probe each story 2 levels deep ("why that option?", "what would you do differently?").

## 3. Readiness score per course (the "am I done?" number)
- **Readiness** = the verdicts of the **last 3 mocks** of that course (round or company), newest first.
- **Ready** = 3 consecutive passes (Lean Hire or better). The course moves to maintenance mode.
- **Not yet** = anything else. `GAPS.md` says what to drill.
- Real-interview debriefs count toward readiness with the same weight as mocks.
- A **loop** passes by committee rules: no round at No Hire, and ≥ 2 rounds at Lean Hire or better,
  with the HM round not at Lean No.

## 4. Cadence (writes "next mock due" into INDEX.md)
- **Primary course** (per the study plan): one round mock every **14 days**.
- **Secondary courses**: one round mock every **28 days**, review mode.
- **Full loop**: at the end of each block cycle, roughly every **8–10 weeks**, or **1 week before any
  real onsite**.
- **Interview override**: a real interview within 3 weeks → that round's mock every 7 days until it.

## 5. Scorecard template (`ledger/scorecards/YYYY-MM-DD_<type>_<name>.md`)
```markdown
# <Round> mock — <course / company> — <date>
source: mock | real · type: round | company | loop-round · clock: <min> · interviewer persona: <...>

## Problem(s)
- <problem statement in one line> (difficulty · family)

## Scores
| Axis | Score | Evidence |
|------|-------|----------|
| ... | 1–4 | one line, quote or timestamp |
**Average:** x.x → **Verdict:** No Hire | Lean No | Lean Hire | Strong Hire

## Candidate self-score
<what they said, before the verdict>

## What a real committee would say
<2–3 plain sentences>

## Top 3 fixes (highest leverage first)
1. ...
2. ...
3. ...

## Trend
<vs the previous mock of this course, one line>
```

## 6. INDEX.md structure (the ledger summary)
```markdown
# Mock Interview Ledger

## Readiness
| Course | Last 3 verdicts (newest first) | Ready? | Next mock due | Mocks done |
|--------|--------------------------------|--------|---------------|------------|

## All mocks
| Date | Type | Course / company | Problem(s) | Verdict | Avg | Scorecard |
|------|------|------------------|------------|---------|-----|-----------|

## Problems asked (never repeat; check family · domain · curveball against the last 3 of the course)
- <course> · <canonical problem> · <family> · <domain / story used> · <curveball> · <date>

## Loops in progress
- <role/company> · rounds done: ... · remaining: ...
```
