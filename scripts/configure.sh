#!/bin/bash

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo ""
echo -e "${YELLOW}Jarvis Setup — let's get your keys sorted${NC}"
echo "==========================================="
echo ""

# DeepSeek key
echo -e "${CYAN}1. DeepSeek API key${NC}"
echo "   Get it from: platform.deepseek.com → API Keys"
read -p "   Paste your DeepSeek key: " DEEPSEEK_KEY
echo ""

# Telegram
echo -e "${CYAN}2. Telegram Bot Token${NC}"
echo "   Open Telegram → search @BotFather → send /newbot → follow steps → paste token here"
read -p "   Paste your Telegram bot token: " TELEGRAM_TOKEN
echo ""

# Timezone
echo -e "${CYAN}3. Your timezone${NC}"
echo "   e.g. Australia/Melbourne, Australia/Sydney, Asia/Singapore"
read -p "   Timezone [Australia/Melbourne]: " TIMEZONE
TIMEZONE=${TIMEZONE:-Australia/Melbourne}
echo ""

# Write .env
cat > .env <<EOF
DEEPSEEK_API_KEY=${DEEPSEEK_KEY}
TELEGRAM_BOT_TOKEN=${TELEGRAM_TOKEN}
WHATSAPP_ENABLED=false
GOOGLE_CLIENT_ID=
GOOGLE_CLIENT_SECRET=
TZ=${TIMEZONE}
EOF

echo -e "${GREEN}✅ .env saved.${NC}"
echo ""
echo "Starting Jarvis..."
docker compose up -d

echo ""
echo -e "${GREEN}Jarvis is running!${NC}"
echo ""
echo "Now open Telegram, find your bot, and send it:"
echo -e "${YELLOW}  Let's do onboarding${NC}"
echo ""
echo "Logs: docker compose logs -f"
