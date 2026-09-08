# 🎮 Tetris on Docker (Ubuntu + Nginx)

A fully playable **Tetris game** running inside an **Ubuntu Docker container**, served by **Nginx** and playable in any web browser.

![Tetris](https://img.shields.io/badge/Game-Tetris-blue?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Ubuntu_22.04-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/Server-Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)
![HTML5](https://img.shields.io/badge/Built_with-HTML5_Canvas-E34F26?style=for-the-badge&logo=html5&logoColor=white)

---

## 🚀 Quick Start

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running

### Run with Docker

```bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/tetris-docker.git
cd tetris-docker

# Build and run
docker compose up -d
```

Then open your browser and go to:

```
http://localhost:8080
```

Click **▶ START** and enjoy! 🎮

---

## 🎮 Controls

| Key | Action |
|-----|--------|
| `← →` | Move left / right |
| `↑` | Rotate piece |
| `↓` | Soft drop |
| `Space` | Hard drop |
| `C` | Hold piece |
| `P` | Pause / Resume |

---

## ✨ Features

- ✅ All 7 classic Tetrominoes (I, O, T, S, Z, J, L)
- ✅ Ghost piece (shows where piece will land)
- ✅ Hold piece mechanic
- ✅ Next piece preview
- ✅ Scoring system (Tetris = 800pts × level)
- ✅ Increasing speed per level
- ✅ Best score saved locally
- ✅ Smooth animations & gradient blocks

---

## 🐳 Docker Details

| Property | Value |
|----------|-------|
| Base Image | `ubuntu:22.04` |
| Web Server | `nginx:1.18` |
| Port | `8080` (host) → `80` (container) |

---

## 🛠️ Manual Docker Commands

```bash
# Build the image
docker build -t tetris-game .

# Run the container
docker run -d --name tetris-game -p 8080:80 tetris-game

# Stop the game
docker stop tetris-game

# Start again
docker start tetris-game

# Remove container
docker rm -f tetris-game
```

---

## 📁 Project Structure

```
tetris-docker/
├── index.html         # Tetris game (HTML5 Canvas + JavaScript)
├── Dockerfile         # Ubuntu 22.04 + Nginx setup
├── docker-compose.yml # Easy one-command launch
└── README.md          # This file
```

---

## 📄 License

MIT License — free to use, modify and share!
