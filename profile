<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Harshkumar Patel – Portfolio</title>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;600&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
<style>
  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

  :root {
    --bg: #f8f9fb;
    --card: #ffffff;
    --border: #e5e7eb;
    --text: #111827;
    --muted: #6b7280;
    --accent: #6366f1;
    --accent2: #0ea5e9;
    --radius: 12px;
  }

  body {
    font-family: 'Plus Jakarta Sans', sans-serif;
    background: var(--bg);
    color: var(--text);
    min-height: 100vh;
  }

  /* ── HERO ─────────────────────────────── */
  .hero {
    background: linear-gradient(135deg, #0f0c29 0%, #302b63 50%, #24243e 100%);
    color: #fff;
    padding: 60px 24px 80px;
    text-align: center;
    position: relative;
    overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute; inset: 0;
    background: radial-gradient(ellipse at 70% 30%, rgba(99,102,241,.25) 0%, transparent 60%),
                radial-gradient(ellipse at 20% 80%, rgba(14,165,233,.2) 0%, transparent 55%);
  }
  .hero-avatar {
    width: 96px; height: 96px; border-radius: 50%;
    background: linear-gradient(135deg, #6366f1, #0ea5e9);
    display: flex; align-items: center; justify-content: center;
    font-size: 2.4rem; font-weight: 800; color: #fff;
    margin: 0 auto 20px; position: relative; z-index: 1;
    box-shadow: 0 0 0 4px rgba(255,255,255,.15);
  }
  .hero h1 { font-size: clamp(1.8rem, 4vw, 2.8rem); font-weight: 800; position: relative; z-index: 1; letter-spacing: -.5px; }
  .hero .role { font-size: 1.05rem; color: #a5b4fc; margin: 8px 0 20px; position: relative; z-index: 1; }
  .hero-links { display: flex; flex-wrap: wrap; gap: 10px; justify-content: center; position: relative; z-index: 1; }
  .hero-links a {
    display: inline-flex; align-items: center; gap: 7px;
    padding: 8px 18px; border-radius: 999px;
    font-size: .82rem; font-weight: 600; text-decoration: none;
    background: rgba(255,255,255,.1); color: #fff; border: 1px solid rgba(255,255,255,.2);
    transition: all .2s;
  }
  .hero-links a:hover { background: rgba(255,255,255,.2); transform: translateY(-2px); }
  .hero-meta { display: flex; flex-wrap: wrap; gap: 18px; justify-content: center; margin-top: 18px; position: relative; z-index: 1; font-size: .85rem; color: #c7d2fe; }
  .hero-meta span { display: flex; align-items: center; gap: 6px; }

  /* ── LAYOUT ───────────────────────────── */
  .container { max-width: 900px; margin: 0 auto; padding: 0 20px 60px; }

  /* ── NAV TABS ─────────────────────────── */
  .nav-tabs {
    display: flex; gap: 4px; overflow-x: auto;
    background: var(--card); border-bottom: 1px solid var(--border);
    padding: 0 20px; position: sticky; top: 0; z-index: 100;
    box-shadow: 0 1px 8px rgba(0,0,0,.06);
  }
  .nav-tabs button {
    padding: 14px 18px; font-size: .82rem; font-weight: 600;
    background: none; border: none; border-bottom: 2.5px solid transparent;
    color: var(--muted); cursor: pointer; white-space: nowrap;
    transition: all .2s; font-family: inherit;
  }
  .nav-tabs button.active { color: var(--accent); border-bottom-color: var(--accent); }
  .nav-tabs button:hover { color: var(--text); }

  /* ── CARD ─────────────────────────────── */
  .card {
    background: var(--card); border: 1px solid var(--border);
    border-radius: var(--radius); padding: 32px;
    margin-top: 24px;
    animation: fadeUp .4s ease both;
  }
  @keyframes fadeUp { from { opacity:0; transform: translateY(16px); } to { opacity:1; transform: none; } }

  .section-title {
    font-size: 1.15rem; font-weight: 700;
    display: flex; align-items: center; gap: 10px;
    padding-bottom: 14px; margin-bottom: 22px;
    border-bottom: 1.5px solid var(--border);
  }
  .section-title .icon { font-size: 1.25rem; }

  /* ── TAB SECTIONS ─────────────────────── */
  .tab-section { display: none; }
  .tab-section.active { display: block; }

  /* ── ABOUT ────────────────────────────── */
  .about-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-bottom: 20px; }
  @media (max-width: 560px) { .about-grid { grid-template-columns: 1fr; } }
  .about-item { padding: 14px 18px; background: var(--bg); border-radius: 10px; border: 1px solid var(--border); }
  .about-item label { font-size: .72rem; text-transform: uppercase; letter-spacing: .08em; color: var(--muted); font-weight: 700; }
  .about-item p { font-size: .9rem; font-weight: 600; margin-top: 4px; }
  .bio-box {
    background: linear-gradient(135deg, #eef2ff, #f0f9ff);
    border: 1px solid #c7d2fe; border-radius: 10px;
    padding: 18px; font-size: .9rem; line-height: 1.65; color: #374151;
    font-family: 'JetBrains Mono', monospace;
  }
  .bio-box .kw { color: #6366f1; font-weight: 600; }
  .bio-box .str { color: #0ea5e9; }
  .bio-box .key { color: #374151; }

  /* ── EDUCATION ────────────────────────── */
  .edu-card { display: flex; gap: 16px; padding: 18px; background: var(--bg); border-radius: 10px; border: 1px solid var(--border); margin-bottom: 14px; }
  .edu-icon { width: 44px; height: 44px; border-radius: 10px; background: linear-gradient(135deg,#6366f1,#818cf8); display: flex; align-items: center; justify-content: center; color: #fff; font-size: 1.1rem; flex-shrink: 0; }
  .edu-info h4 { font-size: .95rem; font-weight: 700; }
  .edu-info p { font-size: .82rem; color: var(--muted); margin-top: 3px; }
  .edu-info .badge { display: inline-block; margin-top: 7px; padding: 3px 10px; border-radius: 999px; font-size: .72rem; font-weight: 700; background: #ede9fe; color: #7c3aed; }

  /* ── SKILLS ───────────────────────────── */
  .skill-group { margin-bottom: 26px; }
  .skill-group h4 { font-size: .8rem; text-transform: uppercase; letter-spacing: .1em; font-weight: 700; color: var(--muted); margin-bottom: 12px; }
  .badge-row { display: flex; flex-wrap: wrap; gap: 8px; }
  .skill-badge {
    display: inline-flex; align-items: center; gap: 7px;
    padding: 7px 14px; border-radius: 8px;
    font-size: .78rem; font-weight: 700;
    letter-spacing: .03em; text-transform: uppercase;
    transition: transform .15s, box-shadow .15s; cursor: default;
  }
  .skill-badge:hover { transform: translateY(-2px); box-shadow: 0 6px 16px rgba(0,0,0,.15); }
  .skill-badge img, .skill-badge i { font-size: .85rem; }

  /* badge colors */
  .b-orange   { background:#e65c00; color:#fff; }
  .b-blue     { background:#2563eb; color:#fff; }
  .b-yellow   { background:#d97706; color:#fff; }
  .b-js       { background:#eab308; color:#000; }
  .b-teal     { background:#0d9488; color:#fff; }
  .b-red      { background:#dc2626; color:#fff; }
  .b-cyan     { background:#0891b2; color:#fff; }
  .b-react    { background:#0f172a; color:#61dafb; }
  .b-node     { background:#15803d; color:#fff; }
  .b-express  { background:#1e293b; color:#fff; }
  .b-django   { background:#092e20; color:#44b78b; }
  .b-flask    { background:#1e293b; color:#fff; }
  .b-html     { background:#ea580c; color:#fff; }
  .b-css      { background:#1d4ed8; color:#fff; }
  .b-purple   { background:#7c3aed; color:#fff; }
  .b-indigo   { background:#4338ca; color:#fff; }
  .b-dark     { background:#111827; color:#fff; }
  .b-green    { background:#15803d; color:#fff; }
  .b-mongo    { background:#15803d; color:#fff; }
  .b-psql     { background:#1e40af; color:#fff; }
  .b-aws      { background:#111827; color:#ff9900; }
  .b-cloud    { background:#0369a1; color:#fff; }
  .b-net      { background:#075985; color:#fff; }
  .b-git      { background:#dc2626; color:#fff; }
  .b-github   { background:#111827; color:#fff; }
  .b-postman  { background:#ea580c; color:#fff; }
  .b-pgadmin  { background:#336791; color:#fff; }
  .b-ai       { background:#5b21b6; color:#fff; }
  .b-ml       { background:#d97706; color:#fff; }
  .b-cyber    { background:#1e293b; color:#fff; }
  .b-wss      { background:#b91c1c; color:#fff; }
  .b-log      { background:#0f766e; color:#fff; }
  .b-dbms     { background:#374151; color:#fff; }
  .b-jwt      { background:#1e293b; color:#fff; }
  .b-jest     { background:#c21325; color:#fff; }
  .b-redux    { background:#764abc; color:#fff; }
  .b-tailwind { background:#0284c7; color:#fff; }
  .b-mysql    { background:#00618a; color:#fff; }

  /* ── PROJECTS ─────────────────────────── */
  .project-card {
    border: 1px solid var(--border); border-radius: 10px;
    padding: 20px; margin-bottom: 16px;
    transition: box-shadow .2s, border-color .2s;
  }
  .project-card:hover { box-shadow: 0 4px 20px rgba(0,0,0,.08); border-color: #c7d2fe; }
  .project-header { display: flex; align-items: flex-start; justify-content: space-between; gap: 12px; }
  .project-header h4 { font-size: 1rem; font-weight: 700; }
  .project-header .year { font-size: .75rem; color: var(--muted); background: var(--bg); border: 1px solid var(--border); padding: 3px 10px; border-radius: 999px; white-space: nowrap; }
  .project-tech { display: flex; flex-wrap: wrap; gap: 6px; margin: 10px 0; }
  .tech-tag { padding: 3px 10px; border-radius: 6px; font-size: .72rem; font-weight: 700; background: #eef2ff; color: #4338ca; border: 1px solid #c7d2fe; }
  .project-desc { font-size: .84rem; color: #374151; line-height: 1.6; }
  .project-desc li { margin-left: 16px; margin-top: 5px; }
  .project-link { display: inline-flex; align-items: center; gap: 5px; margin-top: 10px; font-size: .78rem; font-weight: 600; color: var(--accent); text-decoration: none; }
  .project-link:hover { text-decoration: underline; }

  /* ── CERTIFICATIONS ───────────────────── */
  .cert-table { width: 100%; border-collapse: collapse; font-size: .88rem; }
  .cert-table th { text-align: left; padding: 10px 14px; background: var(--bg); font-size: .75rem; text-transform: uppercase; letter-spacing: .07em; color: var(--muted); font-weight: 700; border-bottom: 1px solid var(--border); }
  .cert-table td { padding: 13px 14px; border-bottom: 1px solid var(--border); vertical-align: middle; }
  .cert-table tr:last-child td { border-bottom: none; }
  .cert-table tr:hover td { background: var(--bg); }
  .cert-name { font-weight: 600; }
  .cert-issuer { color: var(--muted); font-size: .82rem; }
  .cert-link { color: var(--accent); text-decoration: none; font-size: .8rem; font-weight: 600; display: inline-flex; align-items: center; gap: 4px; }
  .cert-link:hover { text-decoration: underline; }

  /* ── LEETCODE ─────────────────────────── */
  .lc-card {
    background: #1a1a2e; border-radius: 14px;
    padding: 24px; color: #fff; max-width: 500px; margin: 0 auto;
  }
  .lc-header { display: flex; align-items: center; justify-content: space-between; margin-bottom: 20px; }
  .lc-user { display: flex; align-items: center; gap: 12px; }
  .lc-avatar { width: 42px; height: 42px; background: linear-gradient(135deg,#ffa116,#ff6b00); border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 1.1rem; }
  .lc-username { font-weight: 700; font-size: .95rem; font-family: 'JetBrains Mono', monospace; }
  .lc-rank { font-size: .75rem; color: #9ca3af; }
  .lc-rank span { color: #ffa116; font-weight: 700; }
  .lc-total { text-align: center; }
  .lc-total-num { font-size: 2.2rem; font-weight: 800; color: #fff; font-family: 'JetBrains Mono', monospace; }
  .lc-total-label { font-size: .72rem; color: #9ca3af; text-transform: uppercase; letter-spacing: .08em; }
  .lc-bars { display: flex; flex-direction: column; gap: 12px; margin-top: 18px; }
  .lc-bar-row { display: flex; align-items: center; gap: 12px; }
  .lc-bar-label { font-size: .82rem; font-weight: 600; width: 58px; }
  .lc-bar-track { flex: 1; height: 8px; background: #374151; border-radius: 99px; overflow: hidden; }
  .lc-bar-fill { height: 100%; border-radius: 99px; }
  .lc-bar-fill.easy { background: #22c55e; width: 18.5%; }
  .lc-bar-fill.medium { background: #ffa116; width: 8.9%; }
  .lc-bar-fill.hard { background: #ef4444; width: 1.6%; }
  .lc-bar-count { font-size: .78rem; color: #9ca3af; font-family: 'JetBrains Mono', monospace; white-space: nowrap; }
  .lc-quote { font-size: .82rem; color: var(--muted); font-style: italic; text-align: center; margin-bottom: 16px; }

  /* ── ACHIEVEMENTS ─────────────────────── */
  .achievement-item { display: flex; gap: 14px; padding: 14px; background: var(--bg); border-radius: 10px; border: 1px solid var(--border); margin-bottom: 12px; }
  .ach-icon { width: 40px; height: 40px; border-radius: 10px; display: flex; align-items: center; justify-content: center; font-size: 1.15rem; flex-shrink: 0; }
  .ach-icon.gold { background: #fef3c7; }
  .ach-icon.blue { background: #dbeafe; }
  .ach-icon.purple { background: #ede9fe; }
  .ach-icon.green { background: #d1fae5; }
  .ach-info h5 { font-size: .9rem; font-weight: 700; }
  .ach-info p { font-size: .8rem; color: var(--muted); margin-top: 3px; }

  /* ── CONTACT ──────────────────────────── */
  .contact-grid { display: flex; flex-wrap: wrap; gap: 12px; }
  .contact-btn {
    display: inline-flex; align-items: center; gap: 9px;
    padding: 11px 22px; border-radius: 9px;
    font-size: .85rem; font-weight: 700; text-decoration: none;
    letter-spacing: .03em; transition: transform .15s, box-shadow .15s;
    text-transform: uppercase;
  }
  .contact-btn:hover { transform: translateY(-2px); box-shadow: 0 6px 18px rgba(0,0,0,.15); }
  .cb-email    { background: #e53935; color: #fff; }
  .cb-linkedin { background: #0a66c2; color: #fff; }
  .cb-github   { background: #111827; color: #fff; }
  .cb-instagram{ background: linear-gradient(135deg,#833ab4,#fd1d1d,#fcb045); color:#fff; }
  .cb-leetcode { background: #ffa116; color: #fff; }

  /* hobbies */
  details summary { cursor: pointer; font-size: .9rem; font-weight: 600; color: var(--accent); list-style: none; display: flex; align-items: center; gap: 8px; padding: 12px 16px; background: var(--bg); border-radius: 10px; border: 1px solid var(--border); }
  details summary::before { content: '▶'; font-size: .7rem; transition: transform .2s; }
  details[open] summary::before { transform: rotate(90deg); }
  .hobbies { padding: 16px; font-size: .88rem; color: #374151; line-height: 1.7; }

  /* footer */
  .footer { text-align: center; padding: 30px 20px; font-size: .8rem; color: var(--muted); border-top: 1px solid var(--border); margin-top: 40px; }
</style>
</head>
<body>

<!-- ── HERO ── -->
<div class="hero">
  <div class="hero-avatar">HP</div>
  <h1>Harshkumar Patel</h1>
  <p class="role">Full Stack Developer &nbsp;·&nbsp; CSE (AI &amp; ML) @ Adani University</p>
  <div class="hero-links">
    <a href="https://github.com/patelharsh6" target="_blank"><i class="fab fa-github"></i> GitHub</a>
    <a href="https://linkedin.com/in/patelharsh6" target="_blank"><i class="fab fa-linkedin"></i> LinkedIn</a>
    <a href="mailto:pharsh0106@gmail.com"><i class="fas fa-envelope"></i> Email</a>
    <a href="https://leetcode.com/" target="_blank"><i class="fas fa-code"></i> LeetCode</a>
  </div>
  <div class="hero-meta">
    <span><i class="fas fa-map-marker-alt"></i> Ahmedabad, Gujarat, India</span>
    <span><i class="fas fa-graduation-cap"></i> GPA: 8.2 | CGPA: 7.72</span>
    <span><i class="fas fa-briefcase"></i> Open to Internship</span>
  </div>
</div>

<!-- ── NAV ── -->
<nav class="nav-tabs" id="navTabs">
  <button class="active" onclick="showTab('about',this)">👤 About</button>
  <button onclick="showTab('skills',this)">🛠️ Skills</button>
  <button onclick="showTab('projects',this)">🚀 Projects</button>
  <button onclick="showTab('certs',this)">📜 Certifications</button>
  <button onclick="showTab('leetcode',this)">🧩 LeetCode</button>
  <button onclick="showTab('contact',this)">🤝 Contact</button>
</nav>

<div class="container">

  <!-- ── ABOUT ── -->
  <section class="tab-section active" id="tab-about">
    <div class="card">
      <div class="section-title"><span class="icon">👤</span> About Me</div>
      <div class="bio-box" style="margin-bottom:20px">
        <span class="kw">const</span> <span class="key"> harshkumar</span> = {<br/>
        &nbsp;&nbsp;<span class="kw">role</span>: <span class="str">"Full Stack Developer"</span>,<br/>
        &nbsp;&nbsp;<span class="kw">stack</span>: <span class="str">["React", "Node.js", "Django", "MongoDB", "MySQL"]</span>,<br/>
        &nbsp;&nbsp;<span class="kw">passions</span>: <span class="str">["Scalable APIs", "Clean UI/UX", "DSA"]</span>,<br/>
        &nbsp;&nbsp;<span class="kw">lookingFor</span>: <span class="str">"Full Stack Developer Internship 🚀"</span>,<br/>
        &nbsp;&nbsp;<span class="kw">funFact</span>: <span class="str">"370+ LeetCode problems & still counting ☕"</span><br/>
        };
      </div>
      <div class="about-grid">
        <div class="about-item"><label>📍 Location</label><p>Ahmedabad, Gujarat, India</p></div>
        <div class="about-item"><label>🎓 Degree</label><p>B.Tech CSE (AI &amp; ML)</p></div>
        <div class="about-item"><label>🏫 University</label><p>Adani University</p></div>
        <div class="about-item"><label>📅 Batch</label><p>2023 – 2027 (Semester 6)</p></div>
        <div class="about-item"><label>⭐ GPA</label><p>8.2 (Current Sem) | CGPA: 7.72</p></div>
        <div class="about-item"><label>🎯 Status</label><p>Open to Internships</p></div>
      </div>
    </div>

    <div class="card">
      <div class="section-title"><span class="icon">🎓</span> Education</div>
      <div class="edu-card">
        <div class="edu-icon"><i class="fas fa-university"></i></div>
        <div class="edu-info">
          <h4>Adani University, Gujarat</h4>
          <p>Bachelor of Technology – Computer Science &amp; Engineering (AI &amp; ML)</p>
          <span class="badge">GPA 8.2 &nbsp;|&nbsp; 2023 – 2027</span>
        </div>
      </div>
      <div class="edu-card">
        <div class="edu-icon" style="background:linear-gradient(135deg,#0ea5e9,#38bdf8)"><i class="fas fa-school"></i></div>
        <div class="edu-info">
          <h4>Higher Secondary Education – Science Stream</h4>
          <p>Gujarat Board</p>
          <span class="badge" style="background:#dbeafe;color:#1d4ed8">Percentile: 89.62% &nbsp;|&nbsp; Mar 2023</span>
        </div>
      </div>
    </div>
  </section>

  <!-- ── SKILLS ── -->
  <section class="tab-section" id="tab-skills">
    <div class="card">
      <div class="section-title"><span class="icon">🛠️</span> Technical Skills</div>

      <div class="skill-group">
        <h4>Development &amp; Programming</h4>
        <div class="badge-row">
          <span class="skill-badge b-orange"><i class="fab fa-java"></i> Java</span>
          <span class="skill-badge b-blue"><i class="fab fa-python"></i> Python</span>
          <span class="skill-badge b-cyan"><i class="fas fa-copyright"></i> C</span>
          <span class="skill-badge b-js"><i class="fab fa-js"></i> JavaScript</span>
          <span class="skill-badge b-teal"><i class="fas fa-cubes"></i> OOP</span>
          <span class="skill-badge b-indigo"><i class="fas fa-sitemap"></i> DSA</span>
        </div>
      </div>

      <div class="skill-group">
        <h4>Frontend &amp; Backend</h4>
        <div class="badge-row">
          <span class="skill-badge b-react"><i class="fab fa-react"></i> React</span>
          <span class="skill-badge b-redux"><i class="fas fa-layer-group"></i> Redux</span>
          <span class="skill-badge b-tailwind"><i class="fas fa-wind"></i> Tailwind CSS</span>
          <span class="skill-badge b-node"><i class="fab fa-node-js"></i> Node.js</span>
          <span class="skill-badge b-express"><i class="fas fa-server"></i> Express.js</span>
          <span class="skill-badge b-django"><i class="fas fa-globe"></i> Django</span>
          <span class="skill-badge b-html"><i class="fab fa-html5"></i> HTML5</span>
          <span class="skill-badge b-css"><i class="fab fa-css3-alt"></i> CSS3</span>
        </div>
      </div>

      <div class="skill-group">
        <h4>AI, ML &amp; Security</h4>
        <div class="badge-row">
          <span class="skill-badge b-ai"><i class="fas fa-brain"></i> Artificial Intelligence</span>
          <span class="skill-badge b-ml"><i class="fas fa-robot"></i> Machine Learning</span>
          <span class="skill-badge b-cyber"><i class="fas fa-shield-alt"></i> Cyber Security</span>
          <span class="skill-badge b-wss"><i class="fas fa-lock"></i> Web Services Security</span>
          <span class="skill-badge b-log"><i class="fas fa-list-alt"></i> Log Analysis</span>
        </div>
      </div>

      <div class="skill-group">
        <h4>Cloud &amp; Networking</h4>
        <div class="badge-row">
          <span class="skill-badge b-aws"><i class="fab fa-aws"></i> AWS</span>
          <span class="skill-badge b-net"><i class="fas fa-network-wired"></i> Computer Networking</span>
          <span class="skill-badge b-cloud"><i class="fas fa-cloud"></i> Cloud Computing</span>
        </div>
      </div>

      <div class="skill-group">
        <h4>Databases</h4>
        <div class="badge-row">
          <span class="skill-badge b-mongo"><i class="fas fa-leaf"></i> MongoDB</span>
          <span class="skill-badge b-mysql"><i class="fas fa-database"></i> MySQL</span>
          <span class="skill-badge b-psql"><i class="fas fa-elephant"></i> PostgreSQL</span>
          <span class="skill-badge b-dbms"><i class="fas fa-table"></i> DBMS</span>
        </div>
      </div>

      <div class="skill-group">
        <h4>Tools</h4>
        <div class="badge-row">
          <span class="skill-badge b-git"><i class="fab fa-git-alt"></i> Git</span>
          <span class="skill-badge b-github"><i class="fab fa-github"></i> GitHub</span>
          <span class="skill-badge b-postman"><i class="fas fa-paper-plane"></i> Postman</span>
          <span class="skill-badge b-pgadmin"><i class="fas fa-database"></i> pgAdmin</span>
          <span class="skill-badge b-jwt"><i class="fas fa-key"></i> JWT</span>
          <span class="skill-badge b-jest"><i class="fas fa-vial"></i> Jest</span>
        </div>
      </div>

      <div class="skill-group" style="margin-bottom:0">
        <h4>Soft Skills</h4>
        <div class="badge-row">
          <span class="skill-badge" style="background:#f0fdf4;color:#16a34a;border:1px solid #bbf7d0">🧩 Problem Solving</span>
          <span class="skill-badge" style="background:#eff6ff;color:#2563eb;border:1px solid #bfdbfe">🤝 Team Collaboration</span>
          <span class="skill-badge" style="background:#fef9c3;color:#92400e;border:1px solid #fef08a">🔍 Analytical Thinking</span>
          <span class="skill-badge" style="background:#fdf4ff;color:#7c3aed;border:1px solid #e9d5ff">💡 Innovation</span>
          <span class="skill-badge" style="background:#fff1f2;color:#be123c;border:1px solid #fecdd3">🎯 Decision Making</span>
        </div>
      </div>
    </div>
  </section>

  <!-- ── PROJECTS ── -->
  <section class="tab-section" id="tab-projects">
    <div class="card">
      <div class="section-title"><span class="icon">🚀</span> Projects</div>

      <div class="project-card">
        <div class="project-header">
          <h4>💰 Finance Dashboard API</h4>
          <span class="year">2026</span>
        </div>
        <div class="project-tech">
          <span class="tech-tag">Node.js</span><span class="tech-tag">Express</span>
          <span class="tech-tag">MongoDB</span><span class="tech-tag">JWT</span>
          <span class="tech-tag">Jest</span><span class="tech-tag">Supertest</span>
        </div>
        <ul class="project-desc">
          <li>RESTful backend with role-based access control — viewer, analyst, admin — enforced at middleware level.</li>
          <li>JWT auth with bcrypt hashing, token expiry, account deactivation; transaction APIs with filtering, pagination, soft delete.</li>
          <li>MongoDB aggregation pipeline for income/expense summaries, category breakdowns, and monthly trends.</li>
          <li>19 unit &amp; integration tests using Jest and Supertest against in-memory MongoDB.</li>
        </ul>
        <a class="project-link" href="https://github.com/patelharsh6" target="_blank"><i class="fab fa-github"></i> View on GitHub</a>
      </div>

      <div class="project-card">
        <div class="project-header">
          <h4>🔧 GearGuard – Maintenance Management System</h4>
          <span class="year">2025</span>
        </div>
        <div class="project-tech">
          <span class="tech-tag">React</span><span class="tech-tag">Node.js</span>
          <span class="tech-tag">Express</span><span class="tech-tag">MongoDB</span><span class="tech-tag">JWT</span>
        </div>
        <ul class="project-desc">
          <li>Full-stack equipment maintenance system with service requests, technician assignments, and secure workflows.</li>
          <li>Drag-and-drop Kanban board for managing maintenance requests and technician assignments.</li>
          <li>Scheduling system and equipment dashboard for operational visibility.</li>
          <li>MongoDB schemas for equipment, service requests, and technicians with JWT authentication.</li>
        </ul>
        <a class="project-link" href="https://github.com/patelharsh6" target="_blank"><i class="fab fa-github"></i> View on GitHub</a>
      </div>

      <div class="project-card">
        <div class="project-header">
          <h4>👗 ReWear – Community Clothing Exchange</h4>
          <span class="year">2025</span>
        </div>
        <div class="project-tech">
          <span class="tech-tag">React</span><span class="tech-tag">Node.js</span>
          <span class="tech-tag">Express</span><span class="tech-tag">MongoDB</span><span class="tech-tag">JWT</span>
        </div>
        <ul class="project-desc">
          <li>Sustainable fashion platform enabling clothing exchange via chat-based swap and item listings.</li>
          <li>JWT auth, item uploads with metadata tagging, swap tracking dashboard.</li>
          <li>REST APIs and messaging features for smooth clothing exchange workflows.</li>
        </ul>
        <a class="project-link" href="https://github.com/patelharsh6" target="_blank"><i class="fab fa-github"></i> View on GitHub</a>
      </div>

      <div class="project-card">
        <div class="project-header">
          <h4>🎓 University ERP System</h4>
          <span class="year" style="background:#d1fae5;color:#065f46;border-color:#a7f3d0">In Progress</span>
        </div>
        <div class="project-tech">
          <span class="tech-tag">React</span><span class="tech-tag">Django</span>
          <span class="tech-tag">MySQL</span><span class="tech-tag">JWT</span>
        </div>
        <ul class="project-desc">
          <li>Academic management ERP for student records, course registration, and faculty admin.</li>
          <li>JWT auth and RESTful APIs via Django for secure modular backend communication.</li>
          <li>React dashboard with CRUD operations and MySQL integration.</li>
        </ul>
        <a class="project-link" href="https://github.com/patelharsh6" target="_blank"><i class="fab fa-github"></i> View on GitHub</a>
      </div>
    </div>
  </section>

  <!-- ── CERTIFICATIONS ── -->
  <section class="tab-section" id="tab-certs">
    <div class="card">
      <div class="section-title"><span class="icon">📜</span> Certifications</div>
      <table class="cert-table">
        <thead>
          <tr>
            <th>Certificate Name</th>
            <th>Issuer</th>
            <th>Link</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><span class="cert-name">AWS Academy Graduate – Cloud Foundation</span></td>
            <td><span class="cert-issuer">Amazon Web Services</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">AWS Academy Graduate – Machine Learning Foundation</span></td>
            <td><span class="cert-issuer">Amazon Web Services</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">Cyber Security Job Simulation</span></td>
            <td><span class="cert-issuer">Forage</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">Yuva AI for All</span></td>
            <td><span class="cert-issuer">INDIAai</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">Prompt Engineering for Everyone</span></td>
            <td><span class="cert-issuer">Cognitive Class</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">Get Started with Jira</span></td>
            <td><span class="cert-issuer">Coursera</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
          <tr>
            <td><span class="cert-name">Machine Learning Specialization</span></td>
            <td><span class="cert-issuer">Stanford / DeepLearning.AI</span></td>
            <td><a class="cert-link" href="#" target="_blank"><i class="fas fa-link"></i> View</a></td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="card">
      <div class="section-title"><span class="icon">🏆</span> Achievements</div>
      <div class="achievement-item">
        <div class="ach-icon gold">🧠</div>
        <div class="ach-info"><h5>370+ LeetCode Problems Solved</h5><p>Rank #327224 · Easy: 174 · Medium: 181 · Hard: 15</p></div>
      </div>
      <div class="achievement-item">
        <div class="ach-icon blue">☁️</div>
        <div class="ach-info"><h5>AWS Academy Graduate</h5><p>Cloud Foundation &amp; Machine Learning Foundation</p></div>
      </div>
      <div class="achievement-item">
        <div class="ach-icon purple">🛡️</div>
        <div class="ach-info"><h5>Cyber Samwad Cyber Security Event</h5><p>Cyber Security Awareness Participant</p></div>
      </div>
      <div class="achievement-item">
        <div class="ach-icon green">💻</div>
        <div class="ach-info"><h5>Odoo Hackathon</h5><p>Hackathon Participant</p></div>
      </div>
    </div>
  </section>

  <!-- ── LEETCODE ── -->
  <section class="tab-section" id="tab-leetcode">
    <div class="card">
      <div class="section-title"><span class="icon">🧩</span> LeetCode Activity</div>
      <p class="lc-quote">"Continuously refining my problem-solving skills and mastery of Data Structures and Algorithms."</p>
      <div class="lc-card">
        <div class="lc-header">
          <div class="lc-user">
            <div class="lc-avatar"><i class="fas fa-code" style="color:#fff"></i></div>
            <div>
              <div class="lc-username">DpCWSEyDG2</div>
              <div class="lc-rank">Rank: <span>#327224</span></div>
            </div>
          </div>
          <div class="lc-total">
            <div class="lc-total-num">370</div>
            <div class="lc-total-label">Solved</div>
          </div>
        </div>
        <div class="lc-bars">
          <div class="lc-bar-row">
            <span class="lc-bar-label" style="color:#22c55e">Easy</span>
            <div class="lc-bar-track"><div class="lc-bar-fill easy"></div></div>
            <span class="lc-bar-count">174 / 938</span>
          </div>
          <div class="lc-bar-row">
            <span class="lc-bar-label" style="color:#ffa116">Medium</span>
            <div class="lc-bar-track"><div class="lc-bar-fill medium"></div></div>
            <span class="lc-bar-count">181 / 2044</span>
          </div>
          <div class="lc-bar-row">
            <span class="lc-bar-label" style="color:#ef4444">Hard</span>
            <div class="lc-bar-track"><div class="lc-bar-fill hard"></div></div>
            <span class="lc-bar-count">15 / 924</span>
          </div>
        </div>
      </div>
      <div style="margin-top:16px">
        <img src="https://leetcard.jacoblin.cool/DpCWSEyDG2?theme=dark&font=JetBrains+Mono&ext=heatmap" alt="LeetCode Stats" style="width:100%;border-radius:10px;margin-top:10px" onerror="this.style.display='none'"/>
      </div>
    </div>
  </section>

  <!-- ── CONTACT ── -->
  <section class="tab-section" id="tab-contact">
    <div class="card">
      <div class="section-title"><span class="icon">🤝</span> Contact Me</div>
      <div class="contact-grid">
        <a href="mailto:pharsh0106@gmail.com" class="contact-btn cb-email"><i class="fas fa-envelope"></i> Email</a>
        <a href="https://linkedin.com/in/patelharsh6" target="_blank" class="contact-btn cb-linkedin"><i class="fab fa-linkedin"></i> LinkedIn</a>
        <a href="https://github.com/patelharsh6" target="_blank" class="contact-btn cb-github"><i class="fab fa-github"></i> GitHub</a>
        <a href="https://www.instagram.com/" target="_blank" class="contact-btn cb-instagram"><i class="fab fa-instagram"></i> Instagram</a>
        <a href="https://leetcode.com/" target="_blank" class="contact-btn cb-leetcode"><i class="fas fa-code"></i> LeetCode</a>
      </div>
    </div>

    <div class="card">
      <div class="section-title"><span class="icon">🔍</span> Additional Information</div>
      <details>
        <summary>✨ Click to reveal my Interests &amp; Hobbies</summary>
        <div class="hobbies">
          🧠 <strong>Competitive Programming</strong> — Solving DSA challenges on LeetCode daily<br/>
          🌐 <strong>Web Development</strong> — Building full-stack apps with modern frameworks<br/>
          🤖 <strong>AI &amp; ML</strong> — Exploring machine learning models and AI techniques<br/>
          ☁️ <strong>Cloud Computing</strong> — Learning AWS services and cloud architecture<br/>
          🔐 <strong>Cyber Security</strong> — Interested in web security and secure API design
        </div>
      </details>
    </div>
  </section>

</div>

<footer class="footer">
  <p>Made with ❤️ by <strong>Harshkumar Patel</strong> &nbsp;·&nbsp; Ahmedabad, Gujarat, India</p>
  <p style="margin-top:6px">📞 +91 7990800271 &nbsp;·&nbsp; 📧 pharsh0106@gmail.com</p>
</footer>

<script>
  function showTab(id, btn) {
    document.querySelectorAll('.tab-section').forEach(s => s.classList.remove('active'));
    document.querySelectorAll('.nav-tabs button').forEach(b => b.classList.remove('active'));
    document.getElementById('tab-' + id).classList.add('active');
    btn.classList.add('active');
  }
</script>
</body>
</html>
