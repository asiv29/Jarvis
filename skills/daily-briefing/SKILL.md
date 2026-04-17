---
name: daily-briefing
description: Morning briefing for Akshay — surfaces today's calendar events, pending commitments from memory, and a one-line motivational push to start the day
tags: [productivity, scheduling, daily, proactive]
---

# Daily Briefing

Run this skill every morning at 8am to kick off Akshay's day.

## What to do

1. Read `MEMORY.md` to recall any open commitments or upcoming deadlines
2. Check today's calendar events (use calendar tool if available)
3. Read yesterday's memory note at `memory/YYYY-MM-DD.md` if it exists
4. Compose a brief morning message in this structure:

```
Good morning Akshay ☀️

**Today** — [DAY, DATE]

📅 Calendar:
- [event 1 with time]
- [event 2 with time]
- (or "Nothing scheduled — use this for deep work")

📌 On your plate:
- [commitments/deadlines pulled from memory]

💬 [One honest, direct sentence to get him moving — reference something specific from his context, not generic motivation]
```

## Tone rules

- Under 150 words total
- Skip sections that have nothing to show (don't say "no events" if calendar is empty — just omit)
- The closing line should feel personal, not like a template
- If he has a deadline coming up in 1-2 days, flag it with urgency

## After sending

- Append to today's memory note: `## [DATE]\n- Briefing sent. [Notable items if any]`
