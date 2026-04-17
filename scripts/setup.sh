#!/bin/bash
set -e

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}Setting up Kai — Akshay's Personal Assistant${NC}"
echo "============================================="

# Check dependencies
check_dep() {
  if ! command -v "$1" &> /dev/null; then
    echo -e "${RED}✗ $1 not found. Please install it first.${NC}"
    exit 1
  fi
  echo -e "${GREEN}✓ $1${NC}"
}

echo ""
echo "Checking dependencies..."
check_dep docker
check_dep docker compose

# Set up .env
if [ ! -f .env ]; then
  cp .env.example .env
  echo ""
  echo -e "${YELLOW}Created .env from template.${NC}"
  echo "Please fill in your API keys in .env before continuing."
  echo ""
  echo "Required:"
  echo "  DEEPSEEK_API_KEY  — get from platform.deepseek.com"
  echo ""
  echo "Messaging (pick one):"
  echo "  TELEGRAM_BOT_TOKEN — get from @BotFather on Telegram (recommended)"
  echo "  WHATSAPP_ENABLED=true — scan QR on first start"
  echo ""
  read -p "Press Enter once you've filled in .env to continue..."
else
  echo -e "${GREEN}✓ .env already exists${NC}"
fi

# Validate DEEPSEEK_API_KEY
source .env
if [ -z "$DEEPSEEK_API_KEY" ] || [ "$DEEPSEEK_API_KEY" = "sk-your-deepseek-key-here" ]; then
  echo -e "${RED}✗ DEEPSEEK_API_KEY is not set in .env. Aborting.${NC}"
  exit 1
fi

echo ""
echo "Pulling OpenClaw image..."
docker pull openclaw/openclaw:latest

echo ""
echo "Starting Kai..."
docker compose up -d

echo ""
echo -e "${GREEN}✅ Kai is running!${NC}"
echo ""
echo "Dashboard: http://localhost:18789"
echo ""
echo "Next steps:"
echo "  1. Open Telegram and message your bot to start chatting with Kai"
echo "  2. Run the onboarding by telling Kai: 'Let's do onboarding'"
echo "  3. Check logs: docker compose logs -f"
