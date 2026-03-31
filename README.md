# GitOps Sentinel Demo - Kubernetes

This repository is intentionally designed with insecure and non-optimized configurations to test the capabilities of the **GitOps Sentinel** autonomous DevOps agent.

## 🚨 Purpose

The goal of this repository is to simulate real-world DevOps misconfigurations so that the agent can:

* Detect security vulnerabilities
* Identify inefficient configurations
* Suggest and apply fixes automatically
* Create pull requests with detailed reasoning

---

## 📦 Components

### 1. Kubernetes Deployment

* Uses `nginx:latest` (not recommended)
* Missing resource limits
* No security context
* No health probes

### 2. Service

* Exposes application using `LoadBalancer`
* May introduce unnecessary public access

### 3. Dockerfile

* Uses `latest` base image
* Runs as root user
* No dependency version pinning

### 4. Application (app.py)

* Simple Flask application
* Runs on port 80 (may require root privileges)
* Not production-ready (uses Flask dev server)

### 5. Dependencies (requirements.txt)

* No version pinning
* Can lead to inconsistent builds

---

## 🤖 Expected Agent Behavior

GitOps Sentinel should:

1. Analyze all files
2. Detect issues using reasoning (not just linting)
3. Generate secure and optimized fixes
4. Automatically raise a Pull Request with:

   * Code changes
   * Explanation of issues
   * Justification for fixes

---

## 🧪 How to Use

1. Push this repository to GitHub
2. Configure GitOps Sentinel webhook
3. Make a commit or trigger the agent
4. Observe:

   * Analysis
   * Suggested fixes
   * Auto-generated PR

---

## 🎯 Example Issues to Detect

* ❌ Use of `latest` tag
* ❌ Running container as root
* ❌ No CPU/memory limits
* ❌ Missing liveness/readiness probes
* ❌ Hardcoded or insecure configurations
* ❌ Application running on privileged port (80)
* ❌ No production WSGI server
* ❌ Unpinned Python dependencies

---

## 🚀 Outcome

This repo helps demonstrate:

> "GitOps Sentinel as an autonomous SRE agent that can detect, decide, and act without human intervention."

---

## 👩‍💻 Maintainer

Created for **Agentic AI Hackathon '26**
