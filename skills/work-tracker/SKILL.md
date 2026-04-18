---
name: work-tracker
description: Logs any activity when Akshay reports what he's done — uni, GTM work, gym, social, food, mental health, or side projects. Stores to daily memory and updates progress.
tags: [productivity, tracking, logging, life]
---

# Work Tracker

Triggered when Akshay says anything like:
- "Log that I worked on X"
- "Just finished X" / "Done with X"
- "Hit the gym" / "Trained today"
- "Had lunch/dinner" / "Meal prepped"
- "Caught up with [person]"
- "Feeling [state]"
- "Shipped X at work"

## Domains to track

| Domain | Examples |
|---|---|
| **uni** | assignment, study session, lecture, exam prep |
| **gtm** | pipeline task, campaign, meeting, deliverable, research |
| **gym** | workout, run, training session |
| **social** | catch-up, dinner, call with friends/family |
| **food** | meal, prep, eating well or skipping |
| **mental** | how he's feeling, stress level, energy |
| **project** | side builds (Jarvis, lapser_dashboard, etc.) |

## What to do

1. Identify the domain and what was done
2. Log to `memory/YYYY-MM-DD.md`:
```
- [TIME] [DOMAIN]: [what was done] ([duration if given])
  Outcome: [what was produced or achieved]
```
3. If it closes a commitment in MEMORY.md, mark it done
4. Respond in JARVIS voice:

```
Logged, sir. [One dry, specific acknowledgement.]

Today's log: [X] uni · [X] GTM · [X] gym · [X] life
```

## Closing note

If he's logged across 3+ domains in a day:
> "Productive day across the board, sir. That's worth noting."

If gym + study + work all in one day:
> "Full day, sir. Noted."
