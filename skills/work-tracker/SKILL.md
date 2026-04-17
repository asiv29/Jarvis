---
name: work-tracker
description: Logs a work session when Akshay reports what he's been working on — categorises it as uni or internship, stores it in daily memory, and acknowledges progress
tags: [productivity, tracking, logging]
---

# Work Tracker

Triggered when Akshay says something like:
- "Log that I worked on X for Y hours"
- "Just finished X"
- "Done with X"
- "I spent the morning on X"

## What to do

1. Extract:
   - **Task:** what he worked on
   - **Category:** uni or internship (ask if unclear)
   - **Duration:** how long (estimate if not given)
   - **Outcome:** what he finished or produced (ask if not mentioned)

2. Log to `memory/YYYY-MM-DD.md`:
```
- [TIME] Work session: [CATEGORY] — [TASK] ([DURATION])
  Outcome: [what was produced/completed]
```

3. Update commitments table in `MEMORY.md` if this work closes out a commitment

4. Respond briefly:
```
Logged. [One specific, genuine acknowledgement — e.g. "That report's been sitting there for a while, good to get it done."]

Running total today: [X] hours logged.
```

## Edge cases

- If he logs work but the outcome is vague ("did some stuff"), ask: "What specifically did you produce or move forward?"
- If it's the third session logged today, add: "Strong day — [total hours] hours of real work."
- If he hasn't logged anything by 6pm, the goal-coach skill handles the nudge — don't double-up
