# 📘 AG-TechSec — AI LLM Stack Documentation

Welcome to the official documentation for the **AI-LLM-Stack-AGTechSec** project.

## 📑 Sections
- **Overview** – System summary and goals  
- **Architecture** – Full diagrams and component flow  
- **Installation** – Step-by-step deployment  
- **Security Model** – Hardened configuration  
- **Scripts** – Automation and tooling  
- **Nginx Configuration** – SSL, headers, rate limits  
- **Systemd Services** – Reboot-safe design  
- **Troubleshooting** – Common fixes  
- **Roadmap** – Future improvements  

---

# 🚀 About the Project

This stack powers:

- **mychatgpt.pl** — LLM chat (OpenWebUI + Ollama)  
- **ai.mychatgpt.pl** — Image generation (InvokeAI + SDXL)

All running on a secure, GPU-accelerated Ubuntu server engineered by **AG-TechSec**.

---

# 🧱 Architecture Diagram

```mermaid
flowchart TD
    A[User Browser] -->|HTTPS| B[Nginx Reverse Proxy]
    B --> C[OpenWebUI (Chat)]
    B --> D[InvokeAI (Images)]
    C --> E[Ollama GPU LLM Engine]
    D --> F[SDXL GPU Engine]
    E --> G[NVMe Model Store]
    F --> G
```

---

# 📦 Repository Structure

```
AI-LLM-Stack-AGTechSec/
├── docs/        → GitHub Pages site
├── scripts/     → Installation & automation
├── etc/         → Nginx configs + headers
├── systemd/     → Reboot-safe services
└── diagrams/    → Architecture diagrams
```

---

# 🛡️ Security Model

This project follows strong security principles:

- 🔒 HTTPS enforced  
- 🧱 Hardened Nginx headers  
- 🔐 No exposed Docker internal ports  
- ⚡ GPU-optimised LLM environment  
- 🔐 Linux firewall recommended  
- 🧩 Docker network isolation  

---

# 🔧 Quick Links

| Section | File |
|--------|------|
| Installation | `INSTALLATION.md` |
| Overview | `OVERVIEW.md` |
| Troubleshooting | `TROUBLESHOOTING.md` |
| Roadmap | `ROADMAP.md` |
| Nginx Configs | `etc/nginx/` |
| Scripts | `scripts/` |
| Systemd services | `systemd/` |

---

# 🛠️ Troubleshooting Highlights

| Issue | Fix |
|-------|------|
| GPU not detected | `nvidia-smi` |
| Nginx error | `sudo nginx -t` |
| SSL issues | `sudo certbot renew --dry-run` |
| Docker not starting | `sudo systemctl restart docker` |

---

# 🗺️ Roadmap (Short)

- Multi-user isolation  
- Additional LLM models  
- API gateway  
- Usage analytics  
- Netdata integration  
- Auto backup of configs  

---

# 💼 Repository Link

👉 https://github.com/AG-Sec4/AI-LLM-Stack-AGTechSec

---

# © AG-TechSec

Private • Fast • Secure • GPU-Accelerated AI
