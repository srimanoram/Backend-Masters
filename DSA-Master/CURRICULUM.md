# DSA Mastery — Canonical Roadmap (template)

> This is the **read-only canonical curriculum** in the shared teachers repo. On the first session
> the DSA Master copies it to `<workspace>/PROGRESS.md` — the learner ticks items off *there*, not
> here. Each pattern is learned by **attempting problems first**, then extracting the
> *signal → pattern → template → complexity*. Check `[x]` only when the learner can **recognize the
> pattern unaided** and code a clean solution with correct complexity, under time pressure.

## 📊 Progress Dashboard  *(the Master refreshes this every session — your status at a glance)*

| | |
|---|---|
| **Level** | _(from assessment: beginner / knows-basics / intermediate)_ |
| **Target · timeline** | _(companies · target date)_ |
| **Overall mastery** | `░░░░░░░░░░` 0%  ( 0 ● of N ) |
| **Problems solved · sessions · streak** | 0 · 0 · 0 |
| **Pattern reflexes earned** | 0 / 14 |
| **Current focus** | _(this phase/pattern)_ |

**Per-phase bars** _(Master draws one per phase, e.g. `Phase 1 ●●●◑◔☐☐☐`)_:

Mastery states: `☐` not started · `◔` learning (needs full guidance) · `◑` practiced (can do with
hints) · `●` mastered (recognizes the pattern unaided + clean code + correct complexity, timed).
Mark a task `[x]` only when **mastered (●)**; annotate in-progress items inline, e.g.
`[~] 1.4 Sliding window · ◑ practiced · last 06-13 · review 06-20`.
Problem source: LeetCode · NeetCode 150 / Blind 75 · "Grokking the Coding Interview" patterns

---

## Phase 0 — Assessment & Foundations (diagnose, then tailor)
- [ ] 0.0 **Workspace setup** (CLAUDE.md §0a) + **Level Assessment** (§0b): questions + Two-Sum
      baseline graded on *process* → classify → write tailored plan below
- [ ] 0.1 What coding rounds test; the **UMPIRE** framework; how to behave & think out loud
- [ ] 0.2 Complexity foundations: Big-O, common-op costs, recursion complexity, amortized, call-stack space
- [ ] 0.3 The **signal → pattern** map (overview); how to read a problem's tells

### Assessment summary & tailored plan
_(Master fills this after 0.0: level bucket, strengths, gaps, patterns to emphasize/skip, target
companies, timeline, # problems solved. Re-assess weekly and update.)_

## Phase 1 — Core Linear Patterns (arrays, strings, pointers)
- [ ] 1.1 Arrays & Hashing (frequency maps, set lookups) — *signal: "seen before? count? dedup?"*
- [ ] 1.2 Prefix Sum (range sums, subarray sums)
- [ ] 1.3 Two Pointers (sorted pair/triplet, in-place partition)
- [ ] 1.4 Sliding Window — fixed size
- [ ] 1.5 Sliding Window — variable size (longest/shortest/at-most-K)
- [ ] 1.6 Fast & Slow Pointers (cycle detection, middle of list)
- [ ] 1.7 Linked List in-place manipulation (reverse, reorder, merge)
- [ ] 1.8 Monotonic Stack (next greater/smaller, histogram)

## Phase 2 — Searching & Sorting Patterns
- [ ] 2.1 Binary Search (classic, lower/upper bound)
- [ ] 2.2 Binary Search on the **answer space** (minimize-the-max type)
- [ ] 2.3 Sorting-based patterns + custom comparators
- [ ] 2.4 Intervals (merge, insert, overlap) — often Greedy

## Phase 3 — Trees & Heaps
- [ ] 3.1 Tree DFS (pre/in/post-order; recursive & iterative)
- [ ] 3.2 Tree BFS (level-order, right-side view)
- [ ] 3.3 BST properties (search, validate, k-th smallest)
- [ ] 3.4 Heaps / Priority Queue — Top-K, k-th largest
- [ ] 3.5 Heaps — merge K sorted, two-heap (median) pattern
- [ ] 3.6 Tries (prefix search, autocomplete, word dictionary)

## Phase 4 — Recursion, Backtracking & Graphs
- [ ] 4.1 Recursion fundamentals (base case, recurrence, stack depth)
- [ ] 4.2 Backtracking — subsets & combinations
- [ ] 4.3 Backtracking — permutations & constraint problems (N-Queens, Sudoku-style)
- [ ] 4.4 Graph representations; DFS/BFS on graphs; flood fill
- [ ] 4.5 Union-Find (connected components, cycle detection)
- [ ] 4.6 Topological Sort (course schedule / ordering)
- [ ] 4.7 Shortest path basics (BFS for unweighted; Dijkstra intuition)

## Phase 5 — Dynamic Programming (the big one — go slow)
- [ ] 5.1 DP mindset: state, transition, base case; memoization vs tabulation
- [ ] 5.2 1D DP (climbing stairs, house robber, decode ways)
- [ ] 5.3 0/1 Knapsack & subset-sum family
- [ ] 5.4 Unbounded knapsack / coin change
- [ ] 5.5 Grid DP (unique paths, min path sum)
- [ ] 5.6 Sequence DP — LIS, LCS, edit distance
- [ ] 5.7 String / partition DP (palindrome partition, word break)
- [ ] 5.8 DP on trees / intervals (when ready)

## Phase 6 — Advanced & Edge Topics (as target companies require)
- [ ] 6.1 Bit manipulation (XOR tricks, masks, subsets via bits)
- [ ] 6.2 Math / number theory (GCD, sieve, modular arithmetic)
- [ ] 6.3 Greedy proofs & exchange argument intuition
- [ ] 6.4 Mixed/hard problems combining two patterns

## Phase 7 — Interview Gauntlet
- [ ] 7.1 Timed mock: 1 medium in 25 min, fully narrated (UMPIRE out loud)
- [ ] 7.2 Timed mock: 2 problems in 45 min (real round simulation)
- [ ] 7.3 Mock with hints/pushback — practice taking a hint gracefully & recovering
- [ ] 7.4 "Explain your approach before coding" drills (communication-only)
- [ ] 7.5 Final readiness check: cold problem → name pattern in <60s, clean code, correct complexity

---

## 🔁 Spaced-Repetition Review Queue  *(re-solve mastered patterns before they fade)*
_(Master logs each mastered pattern/problem with a next-review date — escalating: +3d, +1w, +3w, +2m.
DSA fades fastest, so this queue matters most here. Re-solve from scratch when due.)_

| Pattern / problem | Mastered | Last reviewed | Next review | Confidence (1–5) |
|-------------------|----------|---------------|-------------|------------------|

## 📝 Mock Scorecards  *(timed coding rounds — watch the process improve)*

| Date | Problem(s) | Pattern spotted? | Brute→Optimal? | Complexity correct? | Clean code? | Communication | Verdict |
|------|-----------|------------------|----------------|---------------------|-------------|---------------|---------|

## Revisit / Weak spots
_(Master appends recurring gaps — e.g. "off-by-one in binary search", "misses DP overlap signal".)_

## Pattern reflexes earned
_(Master logs each pattern the learner can now recognize unaided, with the signal that triggers it.)_

## Session log
_(Master appends 1 line per session: date + pattern/problems + key recognition cue learned.)_
