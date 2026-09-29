# AI Engineer Mastery — Canonical Roadmap (template)

> This is the **read-only canonical curriculum** in the shared teachers repo. On the first session
> the AI Engineer Master copies it to `<workspace>/PROGRESS.md` — the learner ticks items off *there*,
> not here. Every concept is learned by **predicting first**, running a tiny experiment, then naming
> the idea and its WHY. Every phase ends with something **built and evaluated**. Check `[x]` only when
> the learner can **explain the concept to a teammate with its analogy + why + where it breaks**, and
> (for builds) rebuild it unaided.

## 📊 Progress Dashboard  *(the Master refreshes this every session — your status at a glance)*

| | |
|---|---|
| **Level** | _(from assessment: beginner / knows-the-words / has-built-something)_ |
| **Goal · timeline** | _(switch to AI role / AI-in-current-job · target date)_ |
| **Overall mastery** | `░░░░░░░░░░` 0%  ( 0 ● of N ) |
| **Builds shipped · sessions · streak** | 0 · 0 · 0 |
| **Concepts owned (can teach back)** | 0 / 24 |
| **Current focus** | _(this phase/topic)_ |

**Per-phase bars** _(Master draws one per phase, e.g. `Phase 1 ●●●◑◔☐☐`)_:

Mastery states: `☐` not started · `◔` learning (needs full guidance) · `◑` practiced (can explain /
build with hints) · `●` mastered (explains with analogy + why + failure mode; rebuilds unaided).
Mark a task `[x]` only when **mastered (●)**; annotate in-progress items inline, e.g.
`[~] 4.3 Tool use · ◑ practiced · last 06-13 · review 06-20`.
Stack map: **Data → Model → Inference → Application → Evaluation → Operations** (CLAUDE.md §1)

---

## Phase 0 — Assessment & the Map (diagnose, then orient)
- [ ] 0.0 **Workspace setup** (CLAUDE.md §0a) + **Level Assessment** (§0b): questions + the
      "press Enter in ChatGPT / summarise-a-ticket" baseline → classify → write tailored plan below
- [ ] 0.1 What AI / ML / deep learning / LLM / "AI engineer" actually mean — one nested diagram, no hype
- [ ] 0.2 The **6-layer map** (Data → Model → Inference → Application → Evaluation → Operations);
      place three real products on it
- [ ] 0.3 **The 5 Questions** of every AI feature; apply them to the summarise-a-ticket idea
- [ ] 0.4 A model is a function: inputs → parameters → output. Predict what "training" must mean
- [ ] 0.5 Python bridge for a backend dev: venv, pip, dict/list/comprehensions, functions, classes,
      `dataclasses`, type hints, reading a `.env` — enough to build, learn the rest as needed
- [ ] 0.6 First API call: send a prompt, print the reply, **print tokens used + cost**. Change one
      thing, predict the effect, observe

### Assessment summary & tailored plan
_(Master writes: level bucket, stack/day job, Python & maths comfort, goal & timeline, learning
style, what the baseline revealed about their mental model, and the phase order/depth chosen.)_

## Phase 1 — How Machines Learn (classic ML, intuitively, hands-on)
- [ ] 1.1 Learning from data: features, labels, examples. Regression vs classification — spot which is which
- [ ] 1.2 **Loss**: a number for "how wrong". Predict how a bad line scores vs a good one
- [ ] 1.3 **Gradient descent** from scratch in 20 lines: fit a line, watch the loss fall. Learning rate too
      high / too low — predict, then run
- [ ] 1.4 Overfitting, generalisation, **train / validation / test** split — why memorising is failing
- [ ] 1.5 Metrics that matter: accuracy vs precision/recall/F1; why accuracy lies on imbalanced data
- [ ] 1.6 Tour of classic models with scikit-learn (linear/logistic regression, decision tree, kNN):
      when a *simple* model beats an LLM (cheap, fast, explainable)
- [ ] 1.7 **Build:** spam / ticket-category classifier on a small dataset, with a proper eval split and
      a confusion matrix. Note where it fails and why

## Phase 2 — Neural Networks & Deep Learning (the intuition that makes LLMs make sense)
- [ ] 2.1 A neuron = weighted sum + non-linearity. Why the non-linearity is non-negotiable (predict!)
- [ ] 2.2 Layers stack into a network; **backpropagation** as "blame assignment" — intuition, not calculus
- [ ] 2.3 **Embeddings**: meaning as coordinates. Play with word vectors; king − man + woman = ?
- [ ] 2.4 PyTorch basics: tensors, autograd, a 3-layer net on MNIST-like data. Watch it learn
- [ ] 2.5 Why GPUs, batches, epochs; what "parameters" and "7B" mean; a feel for compute cost
- [ ] 2.6 Sequence problems and why plain networks struggle with them (sets up attention)
- [ ] 2.7 **Build:** train a tiny network from scratch; then swap in a pretrained embedding model and
      compare — feel the power of pretraining

## Phase 3 — Transformers & LLMs (from tokens to ChatGPT)
- [ ] 3.1 **Tokens** & tokenisation: why "strawberry" has trouble counting r's; tokens = cost & context
- [ ] 3.2 Next-token prediction: the whole trick. Predict the next word by hand, then let a model
- [ ] 3.3 **Attention**: every token looks at every other token and decides what matters. The "who is
      'it' referring to" puzzle. Why it scales badly (O(n²)) and what that costs
- [ ] 3.4 The transformer block; encoder vs decoder; what "GPT" stands for and why decoder-only won
- [ ] 3.5 **Pretraining → fine-tuning → RLHF/alignment**: how a text-predictor becomes an assistant.
      Base vs instruct vs reasoning models
- [ ] 3.6 **Inference** knobs: context window, temperature, top-p, max tokens, stop sequences, system
      prompts, streaming, KV cache (why the first token is slow and the rest are fast)
- [ ] 3.7 Why **hallucination is structural**, not a bug; what reduces it (grounding, tools, evals)
- [ ] 3.8 The model landscape: closed APIs vs open weights, model sizes, quantisation, running a local
      model with Ollama. Cost/latency/quality triangle
- [ ] 3.9 **Build:** a tiny character-level language model (Karpathy-style) OR a guided read of
      *Attention Is All You Need* with a working attention function in NumPy — learner's choice

## Phase 4 — LLM Application Engineering (where AI engineers live)
- [ ] 4.1 Prompting that works: role, task, constraints, examples (few-shot), output format, chain of
      thought. Prompts are **code**: version them, test them
- [ ] 4.2 **Structured output**: JSON mode / schemas / pydantic validation. Turn a fuzzy model into a
      typed API your backend can trust
- [ ] 4.3 **Tool use / function calling**: the model asks, your code acts. Build a weather/DB-lookup tool
- [ ] 4.4 Streaming, retries, timeouts, idempotency, rate limits — treat the model as a flaky upstream
- [ ] 4.5 Cost engineering: token budgeting, prompt caching, smaller-model routing, batching
- [ ] 4.6 Conversation & memory: message history, summarisation, what "memory" really is
- [ ] 4.7 Multimodal basics: images/PDFs in, when it's worth it
- [ ] 4.8 **Java bridge:** the same feature in Spring AI or LangChain4j — ship it at work
- [ ] 4.9 **Build:** "summarise & classify support tickets" service with structured output, a tool call,
      cost logging, and a 20-example eval set (sets up Phase 6)

## Phase 5 — Embeddings, Vector Search & RAG (giving the model *your* knowledge)
- [ ] 5.1 The problem RAG solves; why not just fine-tune? (Decision Ladder)
- [ ] 5.2 Embedding models & similarity (cosine); embed 100 sentences and search them by hand
- [ ] 5.3 **Chunking**: size, overlap, structure-aware splitting — the most under-rated lever
- [ ] 5.4 Vector stores (FAISS/Chroma/pgvector): index, metadata filters, ANN trade-offs; pgvector
      for a backend dev who already has Postgres
- [ ] 5.5 Retrieval quality: **hybrid search** (BM25 + vectors), **reranking**, query rewriting, top-k
- [ ] 5.6 Grounded generation: citations, "answer only from context", refusal when nothing relevant
- [ ] 5.7 **RAG evaluation**: recall@k, faithfulness, answer relevance; build a small golden set
- [ ] 5.8 Advanced patterns: parent-document retrieval, HyDE, agentic RAG, GraphRAG (awareness)
- [ ] 5.9 **Build:** RAG over the learner's own notes or docs, with an eval set and a before/after
      table for one improvement (chunking or reranking)

## Phase 6 — Evaluation, Observability & Safety (what separates demos from products)
- [ ] 6.1 Why "it looks good" is not an eval; the eval mindset as integration tests for behaviour
- [ ] 6.2 Building an eval set: golden examples, edge cases, regressions; sizing (20 → 200)
- [ ] 6.3 **LLM-as-judge**: rubrics, pairwise comparison, judge bias, calibrating against humans
- [ ] 6.4 Tracing & observability: log every prompt/response/tokens/latency; span-level debugging
- [ ] 6.5 **Prompt injection** & jailbreaks: attack your own Phase 4 build, then defend it (input/output
      guardrails, least-privilege tools, human-in-the-loop)
- [ ] 6.6 PII, data retention, model/provider risk, responsible-use basics a backend team must know
- [ ] 6.7 **Build:** an eval harness that runs your golden set against two prompts/models and prints a
      scorecard; wire it to fail on regression

## Phase 7 — Agents & Tool-Using Systems (models that act)
- [ ] 7.1 The **agent loop**: observe → think → act → repeat. Hand-trace one; it's a `while` loop with
      a router. ReAct pattern
- [ ] 7.2 Tool design: schemas, descriptions as prompts, idempotent tools, error messages the model
      can recover from
- [ ] 7.3 Planning & decomposition; when a fixed workflow beats an agent (most of the time)
- [ ] 7.4 **MCP** (Model Context Protocol): why a standard for tools; expose one of your backend APIs
      as an MCP server
- [ ] 7.5 Memory & state for agents; long-running tasks; checkpointing
- [ ] 7.6 Multi-agent patterns (orchestrator/workers, critic) and their cost; guardrails & stop conditions
- [ ] 7.7 Agent evals: task success rate, step count, cost per task, trajectory review
- [ ] 7.8 **Build:** an agent that resolves a support ticket end-to-end using 3 tools (lookup, act,
      notify) with a max-step budget and a human-approval gate

## Phase 8 — Fine-tuning & Model Customisation (when the ladder demands it)
- [ ] 8.1 Prompt vs RAG vs fine-tune — revisit the Decision Ladder with real cases; what fine-tuning
      can and cannot teach a model
- [ ] 8.2 Data for fine-tuning: formats, quality over quantity, synthetic data, contamination
- [ ] 8.3 **LoRA / PEFT** intuition: why train 1% of the weights; quantisation (QLoRA) for a laptop
- [ ] 8.4 Open-weights ecosystem: Hugging Face hub, model cards, licences, running/serving locally
- [ ] 8.5 Distillation & small models: making a cheap model behave like an expensive one for one task
- [ ] 8.6 Evaluating a fine-tune honestly against the prompted baseline
- [ ] 8.7 **Build:** LoRA fine-tune a small open model on a narrow task (e.g. ticket-category tagging
      in your house style); compare against the Phase 4 prompted version on the same eval set

## Phase 9 — Production AI Systems (shipping it, and the HLD of AI)
- [ ] 9.1 Architecture of an LLM feature in a backend: gateway, prompt store, model router, cache,
      queue for async jobs, eval pipeline, trace store
- [ ] 9.2 Latency & throughput: streaming, speculative/parallel calls, batching, model tiers, SLAs
- [ ] 9.3 Cost control at scale: caching layers, routing, budgets, per-tenant limits, fallbacks
- [ ] 9.4 Reliability: provider outages, fallback models, circuit breakers, idempotent retries
- [ ] 9.5 Versioning & rollout: prompts, models, indexes; shadow traffic, A/B with evals; rollback
- [ ] 9.6 Serving open models: vLLM/Ollama, GPU basics, when self-hosting pays off
- [ ] 9.7 Data pipelines for RAG: ingestion, refresh, dedupe, access control at retrieval time
- [ ] 9.8 **Build:** deploy the Phase 4/5 service behind an HTTP API (FastAPI or Spring) with tracing,
      caching, and a cost dashboard; load-test it lightly

## Phase 10 — Capstone & Interview Readiness (become the AI engineer)
- [ ] 10.1 **Capstone:** an end-to-end AI product of the learner's choice (RAG + tools + evals + deploy),
      with a README that explains every decision via the 5 Questions
- [ ] 10.2 AI-engineer interview drills: explain attention/RAG/evals/agents in 2 minutes each, with
      trade-offs; "design an AI feature for X" (HLD-style) rounds
- [ ] 10.3 Debug-the-AI-system drills: given a failing RAG/agent, locate the layer and fix it
- [ ] 10.4 Reading the field: how to read a paper/model release in 20 minutes; what to ignore
- [ ] 10.5 Portfolio & story: the 3 builds to show, the numbers to quote (eval scores, cost, latency)
- [ ] 10.6 Final readiness check: cold problem → 5 Questions → architecture → eval plan → build sketch
      in 45 minutes, narrated

---

## 🔁 Spaced-Repetition Review Queue  *(re-test mastered concepts before they fade)*
_(Master logs each mastered concept/build with a next-review date — escalating: +3d, +1w, +3w, +2m.
Re-test = explain it back with analogy + why + failure mode, or rebuild the core from scratch.)_

| Concept / build | Mastered | Last reviewed | Next review | Confidence (1–5) |
|-----------------|----------|---------------|-------------|------------------|

## 📝 Mock Scorecards  *(AI-engineer interview & design rounds — watch the reasoning improve)*

| Date | Prompt / problem | 5 Questions asked? | Layer located? | Trade-offs stated? | Eval plan? | Communication | Verdict |
|------|------------------|--------------------|----------------|--------------------|------------|---------------|---------|

## Revisit / Weak spots
_(Master appends recurring gaps — e.g. "skips the eval question", "confuses fine-tuning with RAG".)_

## Concepts owned (can teach back)
_(Master logs each concept the learner can explain unaided with analogy + why + where it breaks.)_

## Builds shipped
_(Master logs each runnable build: date, what it proves, eval result, cost/latency observed.)_

## Session log
_(Master appends 1 line per session: date + topic + key insight learned.)_
