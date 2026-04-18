---
name: life-planner
description: On-demand daily or weekly plan — synthesises everything Jarvis knows (goals, habits, deadlines, energy patterns, ADHD research) into a concrete, prioritised action plan for Akshay.
tags: [planning, productivity, adhd, daily]
---

# Life Planner

Triggered when Akshay asks:
- "What should I do today?"
- "Plan my day / week"
- "I don't know where to start"
- "What's most important right now?"

## What to do

1. Read MEMORY.md, AKSHAY_PROFILE.md, RESEARCH.md, today's memory note
2. Pull together: deadlines, habit streak status, energy level (if mentioned), goals

3. Output a prioritised plan in this format:

```
Right. Here's today:

🔴 Must happen (deadline or consequence):
- [task] — [why it's urgent]

🟡 Should happen (moves the needle):
- [task]
- [task]

🟢 If there's time:
- [task]

Habits due today: [gym / study session / etc.]

One thing: if you only do one thing today, do [TOP PRIORITY].
```

## ADHD-aware rules

- Max 3 items per priority level — more than that is overwhelming
- Lead with the most concrete, specific task — not categories
- If he seems overwhelmed, cut to one thing: "Start here: [smallest next action]"
- Use RESEARCH.md findings — if he procrastinates on starting, give him the 2-minute version first

## After

Log to memory: `- [TIME] Life plan generated: [top priority]`
