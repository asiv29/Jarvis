# Kai — Personal Assistant

A production-ready personal assistant built on [OpenClaw](https://openclaw.ai), powered by DeepSeek. Runs on your laptop server via Docker. Learns about you over time.

## What Kai does

- **8am daily briefing** — calendar + open tasks + a push to start
- **Midday check-in** — are you on track?
- **Evening check-in** — logs the day, preps tomorrow
- **Sunday weekly review** — deep reflection on uni + internship work
- **Wednesday nudge** — mid-week accountability check
- **Self-learning** — updates its memory after every conversation. Gets sharper over time.

Kai talks to you via **Telegram** (or WhatsApp). It feels like texting your PA.

## Quick start

### Prerequisites
- Docker Desktop installed
- DeepSeek API key → [platform.deepseek.com](https://platform.deepseek.com)
- Telegram bot token → message @BotFather on Telegram, run `/newbot`

### Run it

```bash
git clone <your-repo-url>
cd jarvis
./scripts/setup.sh
```

The script will:
1. Create your `.env` from the template
2. Pull the OpenClaw Docker image
3. Start Kai in the background

### First-time setup

After Kai starts, open Telegram and message your bot:

```
Let's do onboarding
```

Kai will ask about your university courses, internship, schedule preferences, and goals. This seeds the memory so it can be useful from day one.

## Project structure

```
jarvis/
├── docker-compose.yml          # Docker setup
├── .env.example                # Environment template
├── config/
│   ├── openclaw.json           # OpenClaw config (DeepSeek provider, channels)
│   └── cron/
│       └── jobs.json           # Scheduled triggers (briefings, reviews, check-ins)
├── workspace/
│   ├── SOUL.md                 # Kai's personality and values
│   ├── IDENTITY.md             # Akshay's context — who Kai is serving
│   ├── AGENTS.md               # Agent boot instructions
│   ├── MEMORY.md               # Long-term memory (updated by Kai)
│   └── memory/                 # Daily memory notes (YYYY-MM-DD.md)
├── skills/
│   ├── daily-briefing/         # Morning summary skill
│   ├── weekly-review/          # Sunday deep reflection skill
│   ├── goal-coach/             # Midday + evening check-in skill
│   ├── work-tracker/           # Log a work session
│   └── self-learning/          # Memory update skill
└── scripts/
    ├── setup.sh                # One-command setup
    └── backup.sh               # Backs up memory + config
```

## Cron schedule

| Time | What |
|------|------|
| Mon–Sun 8am | Daily briefing |
| Mon–Sun 12pm | Midday check-in |
| Mon–Sun 9pm | Evening check-in |
| Wednesday 3pm | Mid-week nudge |
| Sunday 9am | Weekly review |

Adjust in [`config/cron/jobs.json`](config/cron/jobs.json).

## Useful commands

```bash
# View logs
docker compose logs -f

# Restart Kai
docker compose restart

# Stop Kai
docker compose down

# Backup memory + config
./scripts/backup.sh

# Update to latest OpenClaw
docker compose pull && docker compose up -d
```

## Customising Kai

- **Change personality** → edit [`workspace/SOUL.md`](workspace/SOUL.md)
- **Update your context** → edit [`workspace/IDENTITY.md`](workspace/IDENTITY.md)
- **Change the schedule** → edit [`config/cron/jobs.json`](config/cron/jobs.json)
- **Add/edit skills** → add a folder under `skills/` with a `SKILL.md`
- **Switch messaging channel** → update `config/openclaw.json` and `.env`

## Switching from Telegram to WhatsApp

In `.env`:
```
WHATSAPP_ENABLED=true
TELEGRAM_BOT_TOKEN=   # leave blank
```

In `config/openclaw.json`:
```json
"channels": {
  "whatsapp": { "enabled": true },
  "telegram": { "enabled": false }
}
```

On first start, scan the QR code shown in the logs.

## Backing up

Memory lives in `workspace/memory/` and `workspace/MEMORY.md`. Run:
```bash
./scripts/backup.sh
```

Backs up to `backups/`, keeps the last 30. Commit the `backups/` folder or sync to cloud storage.

## DeepSeek models

| Model | Used for |
|-------|----------|
| `deepseek/deepseek-chat` | All regular conversations |
| `deepseek/deepseek-reasoner` | Complex scheduling / planning tasks |

Switch models in `config/openclaw.json`.
