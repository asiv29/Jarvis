---
name: self-learning
description: Explicit memory update — called after a conversation reveals something new about Akshay's preferences, patterns, schedule, or context that should persist long-term
tags: [memory, learning, profile]
---

# Self-Learning

This skill is called internally after any conversation where something meaningful was revealed about Akshay. It is not usually triggered by Akshay directly — it runs as a background step.

## Trigger conditions

Run this skill when:
- Akshay shares his course names, assignment details, or exam dates
- He reveals a preference (e.g. "I work better at night", "I hate back-to-back meetings")
- He mentions something about his internship role, team, or current project
- A pattern becomes clear across multiple days (e.g. consistently inactive on Mondays)
- He explicitly says "remember that..." or "from now on..."

## What to do

1. Identify what was learned — be specific
2. Determine which section of `MEMORY.md` it belongs to:
   - Profile
   - Schedule preferences
   - Work context (uni or internship)
   - Patterns observed
   - Commitments made

3. Update `MEMORY.md` with the new information. Append, don't overwrite — preserve existing entries.

4. If it was a significant update (e.g. a new course, a new internship project), confirm to Akshay:
   ```
   Got it — I've updated my memory. [One sentence summarising what was saved.]
   ```
   For minor updates, stay silent.

## Quality rules

- Be specific: "prefers working 10pm–1am" beats "night owl"
- Date observations: add when the pattern was first noted
- If contradictory information appears, note both with dates and ask Akshay to clarify

## Example MEMORY.md update

Before:
```
- Best focus time: unknown
```

After a conversation where Akshay says he does his best work late at night:
```
- Best focus time: late night (10pm–1am) — mentioned 2026-04-18
```
