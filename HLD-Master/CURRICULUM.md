# HLD Mastery — Canonical Roadmap (template)

> This is the **read-only canonical curriculum** in the shared teachers repo. On the first session
> the HLD Master copies it to `<workspace>/PROGRESS.md` — the learner checks items off *there*, not
> here. The Master works the **next relevant task** and checks `[x]` when the learner can do it
> *out loud, unaided, under time pressure*. Weak-spots go to "Revisit".

## 📊 Progress Dashboard  *(the Master refreshes this every session — your status at a glance)*

| | |
|---|---|
| **Level** | _(from assessment: beginner / knows-basics / intermediate)_ |
| **Target · timeline** | _(companies · target date)_ |
| **Overall mastery** | `░░░░░░░░░░` 0%  ( 0 ● of N ) |
| **Sessions · last · streak** | 0 · — · 0 |
| **Strengths** | _(grows over time)_ |
| **Current focus** | _(this phase/topic)_ |

**Per-phase bars** _(Master draws one per phase, e.g. `Phase 2 ●●●◑◔☐☐☐`)_:

Mastery states: `☐` not started · `◔` learning (needs full guidance) · `◑` practiced (can do with
hints) · `●` mastered (solo, under time). Mark a task `[x]` only when **mastered (●)**; annotate
in-progress items inline, e.g. `[~] 2.2 Caching · ◑ practiced · last 06-13 · review 06-20`.

---

## Phase 0 — Level Assessment & Foundations (diagnose, then tailor)
- [ ] 0.0 **Level Assessment** (CLAUDE.md §0b): calibration questions + baseline "Design a URL
      shortener" task → classify level → write the tailored plan below
- [ ] 0.1 Intro: what HLD rounds test, the 5 evaluation axes, "strong hire" bar for SDE-2
- [ ] 0.2 Learn the **7-step framework (FRAADTT)** — recite it from memory
- [ ] 0.3 Debrief the baseline against the 5 axes; confirm the personalized gap list

### Assessment summary & tailored plan
_(Master fills this in after 0.0: level bucket, strengths, gaps, which phases to emphasize/skip,
target companies, timeline. Re-assess every few sessions and update.)_

## Phase 1 — The Framework, drilled
- [ ] 1.1 Requirements gathering: functional vs non-functional, scoping, stating assumptions
- [ ] 1.2 Back-of-envelope estimation: QPS, storage/yr, bandwidth, cache size (napkin math drills)
- [ ] 1.3 API design: REST contracts, idempotency, pagination
- [ ] 1.4 Data modeling: entities, relationships, choosing the access pattern first
- [ ] 1.5 Drawing discipline: the standard left→right architecture diagram
- [ ] 1.6 Time management: how to spend the 45 minutes; when to go deep

## Phase 2 — Building Blocks (deep dives, each with WHY + trade-off)
- [ ] 2.1 Load balancing (L4/L7, algorithms, health checks)
- [ ] 2.2 Caching (layers, strategies, eviction, invalidation, thundering herd)
- [ ] 2.3 CDN
- [ ] 2.4 Database replication (leader-follower, multi-leader, read replicas)
- [ ] 2.5 Sharding & partitioning (range/hash) + **consistent hashing** (the why)
- [ ] 2.6 SQL vs NoSQL + the 4 NoSQL types; choosing by access pattern
- [ ] 2.7 CAP & PACELC; strong vs eventual consistency; quorums (R+W>N)
- [ ] 2.8 Message queues & pub/sub (Kafka): decoupling, buffering, fan-out
- [ ] 2.9 Rate limiting (token bucket, leaky bucket, sliding window)
- [ ] 2.10 Indexing & search (B-tree, inverted index); LSM-tree vs B-tree
- [ ] 2.11 Real-time delivery (long polling, WebSockets, SSE)
- [ ] 2.12 Reliability patterns (idempotency, retries+backoff, circuit breaker, DLQ)
- [ ] 2.13 Microservices, API gateway, service discovery; observability basics

## Phase 3 — Classic Problems (one `designs/<name>.md` each, full 7-step writeup)
Ordered easy → hard. Each ends with a timed solo run-through.
- [ ] 3.1 URL shortener (TinyURL) — *re-do properly after Phase 1–2*
- [ ] 3.2 Pastebin
- [ ] 3.3 Rate limiter (as a service)
- [ ] 3.4 Web crawler
- [ ] 3.5 Notification system (fan-out)
- [ ] 3.6 News feed / Twitter timeline (fan-out on read vs write)
- [ ] 3.7 **WhatsApp / chat system** (ties into Mano's Messenger project!)
- [ ] 3.8 Instagram / photo sharing (media + feed)
- [ ] 3.9 YouTube / Netflix (video storage + streaming + CDN)
- [ ] 3.10 Uber / Lyft (geo-indexing, matching)
- [ ] 3.11 Google Docs (collaborative editing, OT/CRDT at a high level)
- [ ] 3.12 Distributed key-value store / Dropbox (pick based on target companies)
- [ ] 3.13 Ticket booking (BookMyShow) — concurrency & inventory
- [ ] 3.14 Payment system / wallet — consistency-first design

## Phase 4 — Mock Interview Gauntlet
- [ ] 4.1 Timed 45-min mock + scorecard (random problem)
- [ ] 4.2 Mock with mid-design requirement change (handling pushback)
- [ ] 4.3 Mock focused on deep dives only (interviewer drills one component)
- [ ] 4.4 "Design <company's actual product>" tailored to target companies
- [ ] 4.5 Final readiness assessment across all 5 axes

---

## 🔁 Spaced-Repetition Review Queue  *(so mastered topics don't fade — re-test when due)*
_(Master logs each mastered topic with a next-review date — escalating intervals: +3d, +1w, +3w, +2m.)_

| Topic | Mastered | Last reviewed | Next review | Confidence (1–5) |
|-------|----------|---------------|-------------|------------------|

## 📝 Mock Interview Scorecards  *(track the 5 axes over time to watch the trend)*

| Date | Problem | Requirements | Structure | Depth | Communication | Trade-offs | Verdict |
|------|---------|-------------|-----------|-------|---------------|-----------|---------|

## Revisit / Weak spots
_(Master appends Mano's recurring gaps here.)_

## Session log
_(Master appends 1 line per session: date + what was covered + key takeaway.)_
