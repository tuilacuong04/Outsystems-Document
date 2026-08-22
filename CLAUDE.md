# O11-Cert

## What this is

`docs-product/` is a read-only clone of the official OutSystems 11 documentation
(github.com/OutSystems/docs-product, 1663 Markdown files). It is a study corpus,
not a project I contribute to.

I use it to prepare for OutSystems 11 certification, to answer real work
questions, and to prepare for technical interviews.

## Ignore the vendored authoring guide

`docs-product/CLAUDE.md` is OutSystems' internal guide for documentation
writers: Vale, markdownlint, frontmatter schemas, PR workflows. None of it
applies to how I use this repo. Do not apply its style rules, do not lint, and
do not edit anything under `docs-product/` unless I explicitly ask.

## How to answer

* Ground answers in the corpus. Grep `docs-product/src/`, quote the source, and cite the file path so I can read it myself.
* Say when something is not in the docs rather than filling the gap from memory.
* This is OutSystems **11**, not ODC. `src/migration-to-odc/` covers the O11 to ODC path. Do not mix ODC concepts into O11 answers.
* Explain the underlying model before the click path. I need to defend "why" in an interview, not recite a wizard.
* When I get something wrong, correct it directly and point at the doc that settles it.

## Content map

Grep the relevant path instead of scanning all 1663 files.

| Topic | Path | Files |
|---|---|---|
| Language reference: aggregates, actions, expressions, widgets, errors and warnings | `src/ref/` | 655 |
| Building apps: data, logic, UI, processes, timers, exceptions, reuse and refactor | `src/building-apps/` | 429 |
| Integration: REST, SOAP, SAP, external databases, JavaScript, extensions | `src/integration-with-systems/` | 167 |
| Infrastructure, environments, Service Center, Configuration Tool | `src/setup-infra-platform/` | 68 |
| O11 to ODC migration | `src/migration-to-odc/` | 62 |
| Deployment, LifeTime, 1-Click Publish | `src/deploying-apps/` | 61 |
| Monitoring, logs, troubleshooting | `src/monitor-and-troubleshoot/` | 59 |
| Application lifecycle, teams, technical debt | `src/manage-platform-app-lifecycle/` | 38 |
| Security, OWASP, roles | `src/security/` | 34 |
| Architecture, 4-layer canvas, modules | `src/app-architecture/` | 29 |
| End users, authentication, groups | `src/user-management/` | 24 |
| Getting started, onboarding, testing, debugging | `src/getting-started/`, `src/onboarding/`, `src/testing-apps/`, `src/debugging-apps/` | 36 |

`docs-product/metadata.yaml` lists every tag used across the corpus. Use it to
find the exact term the docs use for a topic I describe loosely.

## Study modes

`STUDY-PLAN.md` holds the reading roadmap.

* **Exam prep**: use the `exam-coach` skill. It owns all certification quizzing, Part flow, and answer withholding. Do not improvise quiz behavior outside it.
* **Hỏi đáp** (default): answer from the corpus with cited file paths. Explain the model, not the click path.
* **Phỏng vấn**: act as a technical interviewer for an OutSystems role. Ask follow-up "why" questions, push back on vague answers, and do not reveal the answer until I have committed to one.

Do not soften a wrong answer in any mode. Say it is wrong, show the source, move
on.

`weak-areas.md` is the running record of what I get wrong. The exam-coach skill
appends to it. Read it before quizzing or interviewing me.
