# GitHub Copilot Instructions for t2-machine-learning

**Version**: 1.1
**Last Updated**: March 28, 2026
**Repository**: `t2-machine-learning`
**Context**: M.Sc. Data Science & AI

**Environment**: Windows, PowerShell, Python 3.x, Jupyter Notebooks
**Note**: All commands and scripts should use PowerShell syntax. File paths use Windows format.

---

## Strict scope (non-negotiable)

This repository is **Swamy PKV’s personal learning only**. It is **not** for anyone else as courseware, templates, tutorials, or a reference corpus. **Do not** frame content for a general audience (other students, “learners,” recruiters). Public visibility is **not** an invitation to use this repo for third-party purposes. Keep `README.md` aligned with the **Scope (read this first)** section.

---

## 🎯 Repository Purpose

**t2-machine-learning** is **Swamy’s** workspace for implementing ML algorithms from first principles. It contains structured notes, examples, and implementations tied to the M.Sc. DSAI program — **for his use**, not as a shared product for others.

### What This Repository Provides

- **Structured Learning Material**: Notes on ML algorithms and their implementations.
- **Python Implementations**: Algorithms implemented from scratch using Python libraries.
- **Practice Problems**: Solved examples and exercises.
- **Resources**: Reference materials for Swamy’s ML algorithms study.

### Who this is for

- **Swamy PKV only** — personal study and practice. Not written for, maintained for, or aimed at any other audience.

---

## 📁 Repository Structure

**Quick Reference:**
- `src/weekN/01-notes/` - Theory and notes for that week.
- `src/weekN/02-quizzes/` - Self-assessment for that week (original synthesis only).
- `src/weekN/03-notebooks/` - Jupyter Notebooks for from-scratch implementations.
- `src/weekN/04-discussions/` - Worked examples and discussion scenarios.
- `src/` - Also houses reusable Python scripts and helper functions alongside week folders.
- `docs/` - Documentation and repository structure guides (`01_repository-structure.md`, `agent-skills.md` for the `SKILL.md` / skills-mirror pattern).
- `README.md` - Project overview and course coverage.

**Four-Layer Learning Architecture:**

Content is organized by **week** under `src/`. For each week, maintain these four companion subfolders:

1. **Notes**: `src/weekN/01-notes/` — Theory, first-person learning journey
2. **Quizzes**: `src/weekN/02-quizzes/` — Self-assessment questions (original synthesis only)
3. **Notebooks**: `src/weekN/03-notebooks/` — Algorithm implementations from scratch
4. **Discussions**: `src/weekN/04-discussions/` — Worked examples and discussion scenarios

**Example for Week 1:**
```
src/week1/01-notes/
src/week1/02-quizzes/
src/week1/03-notebooks/
src/week1/04-discussions/
```

**Learning Flow**: Read notes → Do quizzes → Implement in notebooks → Discuss examples

---

## 🔧 Development Guidelines

### Source Material Staging

The concept and path of source material are **internal-only** between the author and AI/Copilot. Do not mention, reference, or enumerate that tree in public-facing documentation (`README.md`, `docs/**/*.md`, or published learning content). Use generic wording in public docs.

**🚫 Critical Restrictions:**

- **Read-Only Policy**:
 - **NEVER modify** any file inside `source-material/`
 - **NEVER overwrite** any file inside `source-material/`
 - **NEVER edit** content even if it contains errors
 - Files are **permanent reference materials**

- **No Deletion Policy**:
 - **NEVER delete** anything from `source-material/`
 - Content remains even after migration
 - Serves as **permanent historical reference**

- **Export Location Policy (PDF/PPTX conversions)**:
 - **NEVER write exported/converted files to `docs/exports/`** when the input comes from `source-material/`.
 - For `.pdf` / `.pptx` conversions, create outputs **in the same `source-material` location tree** as the input file.
 - Keep the conversion local to its source-material path so origin and extracted artifact stay together.

**🔄 Migration Workflow:**
1. Read from `source-material/` to understand concepts
2. Synthesize - Rewrite in your own words (NO copy-paste)
3. Publish to educational folders (`src/weekN/01-notes/`, `src/weekN/02-quizzes/`, `src/weekN/03-notebooks/`, `src/weekN/04-discussions/`, `docs/`, `src/`)
4. Cite when using specific algorithms/theorems

**✅ Zero-Copy Policy:**
- **Good Synthesis**: Demonstrates understanding, uses different vocabulary, explains concepts
- **Bad Synthesis (Rejected)**: Word-for-word copying, minor rephrasing, close paraphrasing without understanding

**📁 Purpose**: The folder is a staging area for raw author content, book transcripts/excerpts, PDF extracts, reference materials, and original code examples. These materials remain untouched and serve as permanent references while you create original, synthesized educational content.

### Zero-Copy Policy
- All notes and code must be original syntheses of learning materials.
- No direct copying from textbooks without citation.
- **Examples must be original**: Create fresh scenarios in your own words.
- **Do not copy author/course samples into public companion artifacts**: Institutional quiz or worksheet material stays as reference only; public `src/weekN/02-quizzes/` and `src/weekN/04-discussions/` content must be original synthesis.

### Project Focus
- **Algorithm Accuracy**: Ensure all mathematical formulas and algorithm implementations are correct.
- **Quiz and numeracy alignment**: Marked answers, worked calculations, and solution sketches must match the explanation.
- **Code Quality**: Use clear, well-commented Python code.
- **Visualization**: Use Matplotlib and Seaborn for clear algorithm visualizations. When a process, flow, relationship, or architecture is clearer visually, include a Mermaid diagram and an ASCII fallback wherever applicable.
- **From Scratch**: Implement algorithms from first principles, not using sklearn directly (though sklearn can be used for comparison).

### Code Style (Python)
- Follow PEP 8 style guide.
- Use meaningful variable names (e.g., `learning_rate` instead of `lr`).
- Use type hints where appropriate.
- **Comments**: Comment liberally to explain the *why* of the algorithm step, not just the *how*.
- **No hardcoded paths**: Use `pathlib` or relative paths.

### Code Comments Philosophy
- Explain the **algorithmic reason** for the operation (e.g., "We normalize here to prevent gradient explosion").
- Explain the **mathematical mapping** (e.g., "`theta` represents the model parameters in this cost function").
- Not just syntax explanation (avoid: "This creates a list").

### Documentation Standards
- **Review reports**: All review reports go in `docs/reviews/`.
- **Reference materials**: General reference docs go in `docs/reference/`.
- **Week notes**: Synthesized study notes go in `src/weekN/01-notes/`.

### Voice and Tone
- **Personal learning journey**: Write reading notes as Swamy's first‑person learning journey (avoid "course" or instructor tone).
- **Reflection‑oriented**: Prefer "I'm learning…", "I plan to…", "I want to be able to…" over generic descriptions.
- **Avoid course framing**: Don't title notes as "Course …" or write like a lecturer; write like my own notes (e.g., "My learning journey", "My revision notes").

### Plain English or worked example (every concept)

When authoring or editing public learning Markdown under `src/weekN/01-notes/`, `src/weekN/02-quizzes/`, `src/weekN/04-discussions/`, and comparable notes:

- **Minimum:** For each concept, provide at least one of **(A)** simple plain-English explanation or **(B)** a worked example.
- **Beginner-friendly default:** Assume I am revising the topic after a gap. Use beginner-friendly wording before technical wording, and define specialist terms the first time they appear.
- **Layman explanation:** Explain each important idea in everyday language before moving to the formal version.
- **Business use case:** Wherever practical, connect the concept to at least one realistic business use case so I can see how it matters in real applications.
- **Equations:** Do not leave display math unexplained - add plain-English intuition before or after, and add a numeric walkthrough when it helps a returning learner.
- **Diagrams:** Where a process, workflow, dependency, or architecture is easier to understand visually, include a Mermaid diagram and an ASCII fallback wherever applicable.
- **Layers:** Apply this to reading notes, examples, quizzes when they teach, and notebook Markdown cells that introduce a new concept, formula, or algorithm step.

### Naming Conventions

**Week folder naming:**
- Use lowercase `weekN` format: `week1`, `week2`, `week3`, etc.
- Each week folder contains exactly four subfolders: `01-notes/`, `02-quizzes/`, `03-notebooks/`, `04-discussions/`.

**File naming within week subfolders:**
- Notes: descriptive markdown files, e.g. `linear-regression.md`
- Quizzes: descriptive markdown files, e.g. `linear-regression-quiz.md`
- Notebooks: descriptive notebook files, e.g. `linear-regression-implementation.ipynb`
- Discussions: descriptive markdown files, e.g. `linear-regression-discussion.md`

**No `00_` prefix**: Files and folders must NOT use the `00_` prefix.

### Notebook Guidelines
- Structure notebooks with clear headers.
- Include markdown cells explaining the algorithm concept before the code.
- Use LaTeX for mathematical formulas.
- Ensure all cells run sequentially.
- **Logical Flow**: Import -> Load Data -> Implement Algorithm -> Train -> Evaluate -> Visualize.

### Preferred Learning Flow

For each week, follow this **four-layer learning architecture**:

1. **Notes** (`src/weekN/01-notes/`) - Core concepts, definitions, and mathematical foundations.
2. **Quizzes** (`src/weekN/02-quizzes/`) - Original synthesis questions to test understanding.
3. **Notebooks** (`src/weekN/03-notebooks/`) - Build understanding through implementing algorithms from scratch.
4. **Discussions** (`src/weekN/04-discussions/`) - Worked examples and discussion scenarios.

**Example Pattern for Week 1:**
- `src/week1/01-notes/` (theory)
- `src/week1/02-quizzes/` (self-assessment)
- `src/week1/03-notebooks/` (implementation from scratch)
- `src/week1/04-discussions/` (worked examples and discussion)

---

## 🚀 Running the Code

**Python Environment:**
```powershell
# Optional: Suppress cross-drive hardlink warnings (if expected)
$Env:UV_LINK_MODE = "copy"

# Create virtual environment and install dependencies
uv sync
```

**Jupyter:**
```powershell
jupyter notebook
```

## 🧠 Prompt Engineering

When asking Copilot for help:
- Name the artifact and the goal clearly (for example `src/week1/01-notes/linear-regression.md` or `src/week2/03-notebooks/k-means-clustering-implementation.ipynb`).
- Ask for **(A)** plain-English intuition and/or **(B)** a small numeric walkthrough when introducing a formula.
- Request Python implementation from scratch with `numpy`, `pandas`, and plotting libraries where appropriate.
- Ask for mathematical explanations using LaTeX.
- Request visualizations when appropriate (for example learning curves, decision boundaries, residual plots, or clustering projections).
- Specify reproducibility expectations (for example `np.random.default_rng(42)`).

---

## Protecting assistant governance (primary)

**Primary:** these files must stay **uncorrupted** - `.cursor/rules/`, mirrored **`.github/skills` ↔ `.cursor/skills`**, mirrored **`.github/agents` ↔ `.cursor/agents`**, `CLAUDE.md`, and **this** `copilot-instructions.md`. Before another AI tool or mass refactor touches them: **commit or stash**; edit **both** sides of each mirror in one change; prefer **small scoped diffs**; rely on **`ci-skills-parity.yml`** and **`ci-agent-docs-guard.yml`** on push.

**Secondary (only if damage already happened):** restore from Git as one bundle - **`docs/agent-governance-recovery.md`**.
