# Discord Member Join Webhook Listener

This project is a lightweight webhook microservice designed to notify an external system (e.g., [n8n](https://n8n.io)) whenever a new member joins a Discord server. It leverages [Discord Gateway v10](https://discord.com/developers/docs/topics/gateway) to listen for `GUILD_MEMBER_ADD` events.

> ✅ Built for deployment on modern platforms like [Koyeb](https://www.koyeb.com/) and compatible with other Node.js-friendly cloud services (Vercel, Render, Railway, etc.)

---

## 🚀 Features

- Real-time notifications when a user joins a Discord server.
- Easily connect with automation platforms (e.g., n8n, Zapier).
- Secure webhook integration via environment variables.
- Lightweight and efficient, built on Node.js and `discord.js`.

---

## 🧰 Tech Stack

- Node.js 18+
- [discord.js](https://discord.js.org/) v14
- [Express](https://expressjs.com/) (for webhook delivery)
- WebSocket via Discord Gateway

---

## 📦 Installation

### Prerequisites

- Node.js v18 or later
- A valid Discord Bot Token with the `GUILD_MEMBERS` intent enabled.
- Webhook URL to send notifications (e.g., your n8n endpoint)

### Local Development

```bash
# 1. Clone the repo
git clone https://github.com/yourusername/discord-join-webhook.git
cd discord-join-webhook

# 2. Install dependencies
npm install

# 3. Set up environment variables
cp .env.example .env
# Then edit .env with your values

# 4. Start the development server
npm run dev

# 5. Build for production
npm run build
npm start

```

## ☁️ Deployment on Koyeb (or similar)

1. Koyeb supports Dockerfile-based deployment:

2. Push your code to GitHub.

3. Go to Koyeb Dashboard → Create Service → GitHub Repository

4. Set environment variables in the UI.

5. Deploy 🚀

## 🛡️ Security

- Never hardcode sensitive tokens.

- Use HTTPS for your webhook URL.

- Consider rate-limiting or authentication on your receiving endpoint.

## 🤝 Contributing

Contributions are welcome! Please open an issue or submit a PR.

## 📄 License

This project is licensed under the MIT License.

## ✨ Credits

Created with ❤️ by [Kemquiros](https://github.com/Kemquiros/)