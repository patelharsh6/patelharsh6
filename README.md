<!-- ===================== HERO ===================== -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:0078D4,100:8A2BE2&height=200&section=header&text=HARSHKUMAR%20PATEL&fontSize=42&fontColor=ffffff&animation=fadeIn&desc=Software%20Engineer%20%C2%B7%20AI%2FML%20Engineer&descSize=18&descAlignY=62" />
</p>

<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=23&duration=3200&pause=900&color=0078D4&center=true&vCenter=true&width=720&lines=Software+Engineer+%7C+AI%2FML+Engineer;CSE+(AI+%26+ML)+%40+Adani+University;Building+GitKeeper+%E2%80%94+an+AI+code+reviewer;Python+%C2%B7+PyTorch+%C2%B7+FastAPI+%C2%B7+Node.js+%C2%B7+React" alt="Typing SVG" />
</p>

<p align="center">
  <a href="https://linkedin.com/in/patelharsh6"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /></a>
  <a href="mailto:pharsh0106@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" /></a>
  <a href="https://leetcode.com/u/patelharsh6/"><img src="https://img.shields.io/badge/LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=black" /></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/📍_Ahmedabad,_India-555?style=flat-square" />
  &nbsp;
  <img src="https://img.shields.io/badge/Open_to-Software_Engineering_%2F_AI--ML_roles-2ea44f?style=flat-square" />
</p>

---

<!-- ===================== ABOUT ===================== -->
## 🧠 About Me

I'm a software engineer who builds production systems, and an AI/ML engineer who builds the models and pipelines
that go inside them. The work I care about lives where those two meet — a CLIP retrieval index that has to answer
in milliseconds, an OCR pipeline that has to be right, an LLM agent that has to be sandboxed before it can be trusted.

```yaml
name:      Harshkumar Patel
education: B.Tech CSE (AI & ML), Adani University · 2023–2027 · CGPA 7.69
building:  GitKeeper — an AI pull-request reviewer that must prove every finding
learning:  vector search · LLM agent architecture · MLOps
reach_me:  pharsh0106@gmail.com
```

- 💼 **Backend Developer Intern @ Small Fare** — Node.js / Express / PostgreSQL services for the organizer module; automated cron workflows for payment processing and settlement updates.
- 🔭 **Currently building [GitKeeper](#-currently-building-gitkeeper)** — see below.
- 🧩 **345 problems solved on LeetCode** (195 easy · 131 medium · 19 hard).

---

<!-- ===================== CURRENT WORK ===================== -->
## 🚧 Currently building: GitKeeper

> An AI code-review agent for pull requests, built on one rule: **a reviewer that guesses is one you stop reading.**

GitKeeper reviews a pull request the way a careful engineer would — it reads the diff structurally, runs the
code in a sandbox, and refuses to post a finding it cannot back with evidence.

| | |
|---|---|
| **Stack** | Python 3.12 · FastAPI · Celery · PostgreSQL · Redis · Docker · tree-sitter · Gemini (`google-genai`) · React console |
| **The wedge** | An *earned* `safe-to-merge` verdict. Static review alone can only ever reach `review-needed` — `safe-to-merge` is unreachable **by construction** until the verification sandbox has actually run the tests. |
| **Evidence rule** | A finding with zero `Evidence` rows can never be posted. No test failure is blamed on a pull request without a base-commit comparison proving the failure is *new*. |
| **Agent safety** | The model never holds a write credential. Read-only tools from a hard-coded allowlist — no shell, no network, no writes. Every model output is schema-parsed before use; free-form text is never executed or interpolated into a command. |
| **Architecture** | Module boundaries enforced by import-linter in CI · three-tier model router with a cost/latency budget ledger · forge & language abstractions behind protocols · per-stage latency instrumentation. |
| **Discipline** | Every task carries a self-check command with a checkable output, and guardrails are verified by *violating* them — a gate that has only ever passed is decoration. |

<p align="left">
  <img src="https://img.shields.io/badge/Phase_0_—_Foundations-complete-2ea44f?style=flat-square" />
  <img src="https://img.shields.io/badge/Phase_0.5_—_Eval_harness-complete-2ea44f?style=flat-square" />
  <img src="https://img.shields.io/badge/Phase_1_—_End--to--end_slice-in_progress-0078D4?style=flat-square" />
  <img src="https://img.shields.io/badge/Phase_3_—_Verification_sandbox-planned-999?style=flat-square" />
</p>

Phases 0 and 0.5 are complete and gated — including an evaluation harness running a **51-case golden set** over a
**6-repository fixture corpus**. Currently on the end-to-end thin slice and its latency baseline; next comes
structural surface resolution and the specialised agent suite, then the sandbox that makes the verdict mean something.

---

<!-- ===================== PROJECT PINS ===================== -->
## 🚀 Featured Projects

<p align="center">
  <a href="https://github.com/patelharsh6/Health_Sphere">
    <img src="https://github-readme-stats.shion.dev/api/pin/?username=patelharsh6&repo=Health_Sphere&theme=tokyonight&hide_border=true" />
  </a>
  <a href="https://github.com/patelharsh6/Style-Match">
    <img src="https://github-readme-stats.shion.dev/api/pin/?username=patelharsh6&repo=Style-Match&theme=tokyonight&hide_border=true" />
  </a>
</p>
<p align="center">
  <a href="https://github.com/patelharsh6/University_ERP_System">
    <img src="https://github-readme-stats.shion.dev/api/pin/?username=patelharsh6&repo=University_ERP_System&theme=tokyonight&hide_border=true" />
  </a>
</p>

### 🏥 [HealthSphere](https://github.com/patelharsh6/Health_Sphere) — Digital Healthcare Platform
`React 19` · `Node.js` · `Express` · `MongoDB / Mongoose` · `JWT` · `Docker` · `Jest` · `Tesseract OCR` · `Gemini API`

- 3-role platform (patient / doctor / admin): a React 19 SPA over a Node/Express/MongoDB API with **45+ REST endpoints**, 10 data models, JWT auth, RBAC, and password-change token revocation.
- Automated **lab-report pipeline** — `pdf-parse` with Tesseract OCR fallback extracts **28 parameters** against sex-aware reference ranges, then computes a proportional risk score and cross-report trends.
- Catalog-grounded AI assistant (rules engine + optional Gemini fallback) with emergency-keyword routing; hardened via Helmet / CORS / rate limiting and **7 Jest + Supertest suites**, containerized with Docker.

### 👗 [StyleMatch](https://github.com/patelharsh6/Style-Match) — AI Visual Fashion Search & Outfit Recommender
`Python` · `PyTorch` · `CLIP (ViT-B/32)` · `FAISS` · `FastAPI` · `scikit-learn` · `React 19` · `Vite`

- End-to-end visual search engine encoding a **44K-item** fashion catalog into 512-d CLIP embeddings, serving top-K similarity retrieval over a FAISS index through a FastAPI image-upload API.
- Benchmarked exact (`IndexFlatIP`) vs. approximate (`HNSW`) retrieval on 100-query workloads — tuned `M`/`efSearch` to reach **99.7% recall@10 at 54× lower query latency**, with every index preloaded at startup for zero per-request I/O.
- Extended search into **outfit recommendation**: mined Polyvore co-occurrence with PMI and trained a TF-IDF-weighted TruncatedSVD model on the outfit–item matrix to learn 64-d style-compatibility embeddings, surfaced through a drag-and-drop React lookbook.

### 🎓 [University ERP System](https://github.com/patelharsh6/University_ERP_System) — Academic Management
`Django` · `Django REST Framework` · `PostgreSQL` · `JWT` · `React` · `Recharts`

- Full-stack ERP with three role-scoped portals (Student / Faculty / Admin) across **10 Django apps** and **15+ relational models**, exposing **30+ REST endpoints** to a **45+ component** React SPA.
- JWT auth with refresh-token rotation and role-based authorization enforced **at the queryset level** — closing a broken object-level access flaw that had exposed every student's grades and fee records.
- Eliminated N+1 query patterns via `select_related`/`annotate` and server-side aggregate endpoints; added database-level uniqueness constraints that stop duplicate attendance rows from corrupting reported percentages.

<details>
<summary><b>📂 More projects</b></summary>
<br />

### 🔧 [GearGuard](https://github.com/patelharsh6/GearGuard) — Maintenance Management System
`React` · `Node.js` · `Express` · `MongoDB` · `JWT`

- Full-stack equipment maintenance platform using layered architecture to decouple service-request management, technician assignment, and authentication.
- State-driven **drag-and-drop Kanban board** with real-time status transitions, plus a scheduling module and an operational dashboard.
- Equipment, service-request, and technician entities modeled as normalized MongoDB schemas with referential integrity.

### ♻️ [Rewear](https://github.com/patelharsh6/Rewear) — Community Clothing Exchange Platform
`React` · `Node.js` · `Express` · `MongoDB` · `JWT`

- Peer-to-peer clothing exchange structuring item listing, swap tracking, and messaging as independently maintainable modules.
- Item upload workflows with metadata tagging, plus a **swap lifecycle dashboard** for end-to-end state tracking.
- Resource-oriented RESTful API contracts enabling loosely coupled communication across every feature.

### 🌱 [CropGuard AI](https://github.com/patelharsh6/CropGuard-AI) · 💳 [Credit Evaluation Tool](https://github.com/patelharsh6/Credit-evalution-tool) · 📊 [Finance Dashboard](https://github.com/patelharsh6/finance-dashboard) · 🚌 [Track the Bus](https://github.com/patelharsh6/track-the-bus)

Smaller builds and experiments — CV for crop disease detection, a credit scoring tool, a finance analytics dashboard, and live bus tracking.

</details>

---

<!-- ===================== TECH ===================== -->
## 🛠️ Technical Skills

**🖥️ Languages**

![Python](https://img.shields.io/badge/PYTHON-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Java](https://img.shields.io/badge/JAVA-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![JavaScript](https://img.shields.io/badge/JAVASCRIPT-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![TypeScript](https://img.shields.io/badge/TYPESCRIPT-007ACC?style=for-the-badge&logo=typescript&logoColor=white)
![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)

**📚 Computer Science Fundamentals**

![DSA](https://img.shields.io/badge/DATA%20STRUCTURES%20%26%20ALGORITHMS-E34F26?style=for-the-badge&logo=thealgorithms&logoColor=white)
![OOP](https://img.shields.io/badge/OBJECT--ORIENTED%20PROGRAMMING-0078D4?style=for-the-badge&logo=cplusplus&logoColor=white)
![Machine Learning](https://img.shields.io/badge/MACHINE%20LEARNING-F7931E?style=for-the-badge&logo=scikitlearn&logoColor=white)
![Deep Learning](https://img.shields.io/badge/DEEP%20LEARNING-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white)
![Operating Systems](https://img.shields.io/badge/OPERATING%20SYSTEMS-4D4D4D?style=for-the-badge&logo=linux&logoColor=white)
![System Design](https://img.shields.io/badge/SYSTEM%20DESIGN-6A0DAD?style=for-the-badge&logo=apacheairflow&logoColor=white)
![DBMS](https://img.shields.io/badge/DBMS-00758F?style=for-the-badge&logo=databricks&logoColor=white)

**🌐 Frontend**

![React](https://img.shields.io/badge/REACT-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![Redux](https://img.shields.io/badge/REDUX-593D88?style=for-the-badge&logo=redux&logoColor=white)
![TailwindCSS](https://img.shields.io/badge/TAILWIND-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)
![Vite](https://img.shields.io/badge/VITE-646CFF?style=for-the-badge&logo=vite&logoColor=white)

**⚙️ Backend & APIs**

![Node.js](https://img.shields.io/badge/NODE.JS-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![Express](https://img.shields.io/badge/EXPRESS-404D59?style=for-the-badge&logo=express&logoColor=white)
![Django](https://img.shields.io/badge/DJANGO-092E20?style=for-the-badge&logo=django&logoColor=white)
![FastAPI](https://img.shields.io/badge/FASTAPI-005571?style=for-the-badge&logo=fastapi&logoColor=white)
![REST](https://img.shields.io/badge/REST%20APIs-02569B?style=for-the-badge&logo=swagger&logoColor=white)
![JWT](https://img.shields.io/badge/JWT-000000?style=for-the-badge&logo=jsonwebtokens&logoColor=white)
![Microservices](https://img.shields.io/badge/MICROSERVICES-FF6C37?style=for-the-badge&logo=apachekafka&logoColor=white)

**🤖 AI, ML & Agentic Systems**

![PyTorch](https://img.shields.io/badge/PYTORCH-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TENSORFLOW-FF6F00?style=for-the-badge&logo=tensorflow&logoColor=white)
![Keras](https://img.shields.io/badge/KERAS-D00000?style=for-the-badge&logo=keras&logoColor=white)
![scikit-learn](https://img.shields.io/badge/SCIKIT--LEARN-F7931E?style=for-the-badge&logo=scikitlearn&logoColor=white)
![NumPy](https://img.shields.io/badge/NUMPY-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/PANDAS-150458?style=for-the-badge&logo=pandas&logoColor=white)
![CLIP](https://img.shields.io/badge/CLIP%20EMBEDDINGS-412991?style=for-the-badge&logo=openai&logoColor=white)
![FAISS](https://img.shields.io/badge/FAISS%20%2F%20VECTOR%20SEARCH-0467DF?style=for-the-badge&logo=meta&logoColor=white)
![LLM Agents](https://img.shields.io/badge/LLM%20AGENTS-8A2BE2?style=for-the-badge&logo=anthropic&logoColor=white)

**🗄️ Databases**

![PostgreSQL](https://img.shields.io/badge/POSTGRESQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![MongoDB](https://img.shields.io/badge/MONGODB-47A248?style=for-the-badge&logo=mongodb&logoColor=white)
![MySQL](https://img.shields.io/badge/MYSQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Redis](https://img.shields.io/badge/REDIS-DC382D?style=for-the-badge&logo=redis&logoColor=white)

**☁️ Cloud, DevOps & Tools**

![Docker](https://img.shields.io/badge/DOCKER-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-2671E5?style=for-the-badge&logo=githubactions&logoColor=white)
![Git](https://img.shields.io/badge/GIT-F05032?style=for-the-badge&logo=git&logoColor=white)
![Jest](https://img.shields.io/badge/JEST-C21325?style=for-the-badge&logo=jest&logoColor=white)
![Postman](https://img.shields.io/badge/POSTMAN-FF6C37?style=for-the-badge&logo=postman&logoColor=white)

---

<!-- ===================== STATS ===================== -->
## 📊 GitHub Dashboard

<div align="center">
  <img src="https://streak-stats.demolab.com/?user=patelharsh6&theme=tokyonight&hide_border=true&date_format=M%20j%5B%2C%20Y%5D" width="48%" />
</div>

<div align="center">
  <img src="https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=patelharsh6&theme=tokyonight" width="90%" />
</div>

---

<!-- ===================== LEETCODE ===================== -->
## 🧩 LeetCode Activity

> Continuously sharpening problem-solving and DSA — **345 problems solved** and counting.

<p align="center">
  <a href="https://leetcode.com/u/patelharsh6/">
    <img src="https://leetcard.jacoblin.cool/patelharsh6?theme=nord&font=Fira+Code&ext=activity" alt="LeetCode stats" />
  </a>
</p>

---

<!-- ===================== EDUCATION & CERTS ===================== -->
## 🎓 Education & Certifications

**B.Tech, Computer Science & Engineering (AI & ML)** — Adani University, Gujarat · 2023 – 2027 · **CGPA 7.69**

| Certification | Issuer |
| :--- | :--- |
| **Machine Learning Specialization** | Stanford University & DeepLearning.AI |
| **AWS Academy Graduate — Cloud Foundations** | Amazon Web Services |

---

<!-- ===================== EXTRAS ===================== -->
## 🔍 Additional Information

<details>
<summary><b>✨ Click to reveal my interests & what I'm reading</b></summary>
<br />

**🌱 Interests**

- 🤖 **AI engineering** — taking models to production: embedding pipelines, vector retrieval, LLM agent design (tool allowlists, sandboxing, structured output), and evaluation harnesses that measure whether any of it actually works.
- ⚙️ **Backend engineering** — API design, auth & RBAC boundaries, query optimisation, background job pipelines.
- 🧱 **System design** — service boundaries that hold because a test enforces them, not because a doc says so.
- 🔐 **Security-minded development** — object-level access control, secret hygiene, rate limiting.

**🧠 Currently digging into**

- Vector databases beyond FAISS (Qdrant migration path for StyleMatch).
- Celery semantics under load — `acks_late`, visibility timeouts, revocation.
- Sandbox isolation for running untrusted code.

</details>

---

<!-- ===================== SNAKE ===================== -->
## 🐍 Contribution Snake

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/patelharsh6/patelharsh6/output/github-contribution-grid-snake-dark.svg" />
    <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/patelharsh6/patelharsh6/output/github-contribution-grid-snake.svg" />
    <img alt="Contribution snake" src="https://raw.githubusercontent.com/patelharsh6/patelharsh6/output/github-contribution-grid-snake.svg" />
  </picture>
</p>

---

<!-- ===================== CONNECT ===================== -->
## 🤝 Connect

<p align="center">
  <a href="https://linkedin.com/in/patelharsh6"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /></a>
  <a href="mailto:pharsh0106@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" /></a>
  <a href="https://leetcode.com/u/patelharsh6/"><img src="https://img.shields.io/badge/LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=black" /></a>
  <a href="https://github.com/patelharsh6"><img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /></a>
</p>

<p align="center">
  <em>⚡ "Build the thing that can prove it works." ⚡</em>
</p>

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:8A2BE2,100:0078D4&height=120&section=footer" />
</p>
