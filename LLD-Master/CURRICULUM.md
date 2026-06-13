# LLD Mastery — Canonical Roadmap (template)

> This is the **read-only canonical curriculum** in the shared teachers repo. On the first session
> the LLD Master copies it to `<workspace>/PROGRESS.md` — the learner checks items off *there*, not
> here. The learner writes the code; the Master reviews. Check `[x]` only when the learner can
> design + code it cleanly *under time pressure, unaided*.

## 📊 Progress Dashboard  *(the Master refreshes this every session — your status at a glance)*

| | |
|---|---|
| **Level** | _(from assessment: beginner / knows-OOP / intermediate)_ |
| **Target · timeline** | _(companies · target date)_ |
| **Overall mastery** | `░░░░░░░░░░` 0%  ( 0 ● of N ) |
| **Sessions · last · streak** | 0 · — · 0 |
| **Strengths** | _(grows over time)_ |
| **Current focus** | _(this phase/problem)_ |

**Per-phase bars** _(Master draws one per phase, e.g. `Phase 2 ●●●◑◔☐`)_:

Mastery states: `☐` not started · `◔` learning (needs full guidance) · `◑` practiced (can do with
hints) · `●` mastered (solo, under time). Mark a task `[x]` only when **mastered (●)**; annotate
in-progress items inline, e.g. `[~] 2.2 Vending Machine · ◑ practiced · last 06-13 · review 06-20`.
Problem bank: github.com/ashishps1/awesome-low-level-design

---

## Phase 0 — Level Assessment & Foundations (diagnose, then tailor)
- [x] 0.0 **Level Assessment** (CLAUDE.md §0b): calibration questions + baseline "model a coffee
      vending machine" task → classify level → write the tailored plan below
- [ ] 0.1 Intro: what LLD / machine-coding rounds test; the SDE-2 bar; the 6-step flow
- [ ] 0.2 OOP pillars refresher via a tiny live design (encapsulation/abstraction/poly/inherit)
- [ ] 0.3 SOLID — name a real violation + fix for each principle
- [ ] 0.4 Debrief baseline; confirm personalized gap list

### Assessment summary & tailored plan
**Level bucket:** Knows OOP (writes Java classes/interfaces fine) but had *not designed* with it.
Self-rated: only polymorphism solid; encapsulation/composition-vs-inheritance/SOLID were gaps.
No prior LLD round. Patterns: heard of, not mastered. Concurrency: basics.

**Reality (from baseline build):** learns *fast*. In one warm-up (Coffee Vending Machine) he
reached for and understood — by instinct, with coaching — composition-over-inheritance, Factory,
the **State pattern** (even invented an extra `NeedInventoryState`), Open/Closed, SRP, atomic
check-then-act, thread-safe≠blocking, and domain exceptions. Strong design instinct once unblocked.

**Recurring tells to watch:** reaches for the wrong JDK exception (AccessDenied/IndexOutOfBounds)
instead of a domain exception; tends to ask "is this right?" before committing code (build
confidence to just *try*); needs the "make it RUN" discipline reinforced (interview rule #1).

**⚠️ TIMELINE — CRASH PREP:** Tekion SDE-2 interview **Sat 2026-06-06** (single-day loop):
R1 Machine Coding, R2 DSA, R3 LLD, R4 HLD, R5 HM. **R1 + R3 are our lane (2 of 5 rounds).**
Plan: drill the 6-step flow + SOLID-at-talking-level + Strategy/Factory/State via 2–3 classic
problems end-to-end (Coffee ✅ → Parking Lot → Vending/Splitwise). Resume slow curriculum after.

## Phase 1 — Design Patterns (learn each via a real mini-problem, in Java)
- [x] 1.1 Strategy — done via Parking Lot (AllocationStrategy + PaymentStrategy). Knows intent + vs State.
- [x] 1.2 Factory — done via Coffee Machine (CoffeeFactory). Knows switch vs catalog + OCP smell.
- [~] 1.3 Singleton — discussed dangers (mutable+global=concurrency trap; enum singleton). Not built.
- [x] 1.4 Observer — DONE via topic-based pub-sub (Publisher<topic,Set<Observer>>, subscribe/
      unsubscribe/publish, fan-out). Knows Observer-vs-producer-consumer + Kafka/RabbitMQ mapping.
- [x] 1.5 State — done via Coffee Machine (Idle/Payment/InProcess/NeedInventory, delegation, transitions).
- [~] 1.6 Decorator (add behavior without subclass explosion) — concept seen (toppings); not built solo
- [ ] 1.7 Command (undo/redo, request-as-object)
- [ ] 1.8 Builder (complex object construction)
- [ ] 1.9 Composite, Adapter, Facade, Proxy, Template Method, Chain of Responsibility (quick tour)

## Phase 2 — Easy / Warm-up Problems (one package each)
- [~] 2.1 Parking Lot — BUILT & RUNNING with coaching (Strategy ×2, thread-safe claim, payment).
      ⚠️ Redo SOLO + timed before Sat to confirm unaided. Extensions to mention: unique spot IDs,
      lock-free per-slot CAS claim, SpotAssignmentStrategy swap, multi-gate concurrency.
- [x] 2.2 Vending Machine (State) — DONE as the Coffee Vending Machine (purejava.coffeevendingmachine).
- [ ] 2.3 Stack Overflow / Logging framework (Chain of Responsibility, levels)
- [ ] 2.4 Tic-Tac-Toe (clean game-loop modeling)
- [ ] 2.5 ATM (State + transaction modeling)
- [ ] 2.6 Coffee/Pizza ordering (Decorator + Builder)

## Phase 3 — Medium Problems
- [ ] 3.1 **Chess** (rich domain modeling, piece movement polymorphism) ← Mano's flagship build
- [ ] 3.2 Snake & Ladder (board games, dice, Strategy)
- [ ] 3.3 Elevator system (scheduling, State, multiple cars)
- [ ] 3.4 Splitwise / expense sharing (graph of debts, balance settlement)
- [ ] 3.5 BookMyShow / movie ticket booking (seat selection, concurrency on booking)
- [ ] 3.6 Notification system (Observer + Strategy for channels)
- [ ] 3.7 Car rental / hotel booking (inventory + reservations)

## Phase 4 — Hard / Concurrency-heavy
- [~] 4.1 LRU Cache — BUILT & RUNNING (HashMap + custom DLL w/ sentinels, O(1) get/put, all edge
      cases pass incl. update-non-LRU-key). Thread-safe: synchronize both methods; key insight
      **get() is a writer (reorders recency)**; knows lock-striping + Caffeine. Redo SOLO before Sat.
- [x] 4.2 Rate Limiter — Token Bucket (lazy gradual refill) + Sliding Window Log (deque evict-by-time)
      BOTH BUILT & RUNNING, thread-safe. Knows all 5 types + trade-offs. Optional extension: Sliding
      Window *Counter* (O(1) weighted). Minor cleanup: stale "per min" comment, plusSeconds precision.
- [ ] 4.3 In-memory key-value store / DB with transactions
- [ ] 4.4 Concurrent task scheduler / job queue
- [ ] 4.5 Text editor with undo/redo (Command + Memento)
- [ ] 4.6 Distributed-ish ID generator / Snowflake (ties to HLD)

## Phase 5 — Machine-Coding Mock Gauntlet
- [ ] 5.1 Timed 90-min machine-coding round (full working solution + tests)
- [ ] 5.2 Mock with a mid-round requirement change (prove extensibility)
- [ ] 5.3 Design-review round (defend your design verbally against probing)
- [ ] 5.4 Final readiness assessment

## Phase 6 — Spring-flavored LLD (only after fundamentals are solid)
- [ ] 6.1 Re-architect one design with Spring DI & layering (controller/service/repo)
- [ ] 6.2 Where patterns map to Spring (Factory→BeanFactory, Strategy→injected beans, etc.)
- [ ] 6.3 Connect LLD habits to Mano's real Messenger project structure

---

## 🔁 Spaced-Repetition Review Queue  *(so mastered topics don't fade — re-test when due)*
_(Master logs each mastered problem/pattern with a next-review date — escalating: +3d, +1w, +3w, +2m.)_

| Topic / problem | Mastered | Last reviewed | Next review | Confidence (1–5) |
|-----------------|----------|---------------|-------------|------------------|

## 📝 Mock Scorecards  *(machine-coding / design-review rounds, over time)*

| Date | Problem | Requirements | SOLID/patterns | Extensibility | Working code | Communication | Verdict |
|------|---------|-------------|----------------|---------------|--------------|---------------|---------|

## Revisit / Weak spots
- **Exception hygiene (recurring 3×):** reaches for borrowed JDK exceptions (AccessDenied,
  IndexOutOfBounds, ArrayIndexOutOfBounds) instead of domain-meaningful ones. Drill the reflex:
  bad input→IllegalArgumentException · bad state→IllegalStateException · domain→custom exception.
- **"Make it RUN" discipline:** tends to finish classes but skip the demo/main. Reinforce interview
  rule #1 — a running happy-path beats a perfect-but-unrun design.
- **Confidence to commit code:** asks "is this right?" a lot before trying. Encourage: design, then
  just write it; we review after. The instinct is good — trust it.
- **Concurrency atomicity:** got check-then-act + same-lock discipline conceptually; redo a
  thread-safe piece SOLO (LRU/rate-limiter, Phase 4) to make it muscle memory.
- **Naming:** a few lying names (getVehicle()→returns type). Quick wins in review.

## Session log
- 2026-06-05 — Phase 0 assessment + Coffee Vending Machine warm-up (became a full build). Patterns:
  Factory + State (+ invented NeedInventoryState) + composition-over-inheritance for recipes.
  Concurrency: atomic check-then-act, same-lock discipline, thread-safe≠blocking. Got it RUNNING
  green across 7 test scenarios. Key principle: **"what changes when the requirement changes?"** —
  State pattern killed scattered if/else guards. Cleanup TODO: custom OutOfInventoryException +
  no printStackTrace for handled cases. Money-loss-on-dispense-failure = design gap to mention.
- 2026-06-05 (cont.) — Parking Lot BUILT & RUNNING. Strategy ×2 (AllocationStrategy/NearestFloor +
  PaymentStrategy/PerHourPricing), thread-safe slot claim (synchronized minimal critical section;
  knows lock-free per-slot CAS alternative), Ticket as record, hourly pricing w/ min-1hr. Full
  6-step flow end-to-end. Principle reinforced: extract the *variation point* into a Strategy → OCP.
- 2026-06-05 (cont.) — LRU Cache BUILT & RUNNING. HashMap + hand-rolled doubly-linked list w/ dummy
  sentinels; O(1) get/put; iterated through the classic bugs (sentinel linking, detach-before-attach,
  self-loop from reading prev before detach, eviction-on-update). All 4 test categories green.
  Concurrency: synchronize both ops; **get() is a writer (recency reorder)** — the senior insight.
  Meta-lesson landed: **a passing demo ≠ correct code — tests only catch what they exercise.**
- 2026-06-05 (cont.) — Observer / pub-sub BUILT & RUNNING. Went beyond brief to a TOPIC-based
  pub-sub (Map<topic,Set<Observer>>); fan-out + per-topic unsubscribe verified. Discussed
  Observer vs producer-consumer (broadcast vs work-share; sync push vs queue) + Kafka/RabbitMQ
  as the distributed evolution. Design-choice noted: unknown-topic = error vs no-op (own the policy).
  ⭐ DAY 1 TOTAL: 4 problems + 4 of the top-8 patterns (Strategy, Factory, State, Observer).
- 2026-06-05 (cont.) — Rate Limiter (Token Bucket) BUILT & RUNNING. Iterated through bugs: inverted
  allow/reject, uninitialized tokens, full-reset-vs-gradual-refill (realized his first version was
  Fixed Window mislabeled!), frozen lastRefill timestamp (re-credited elapsed). Final = correct
  lazy-refill token bucket, thread-safe. Learned the 5 rate-limiter algorithms + trade-offs.
  ⭐⭐ DAY 1 FINAL: 5 problems in one day. Sliding Window Counter left as next build.
