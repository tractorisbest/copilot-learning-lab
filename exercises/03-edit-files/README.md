# Exercise 03 — Edit Files ✏️

**Goal:** Learn how to ask Copilot to make changes to a file.

---

## What you'll learn

By the end of this exercise, you'll know how to:
- Ask Copilot to add, remove, or change content in a file
- Review changes Copilot made using `/diff`
- Ask Copilot to undo or redo something

---

## Background

In this folder there's a file called `todo.txt` — a simple to-do list.
You're going to ask Copilot to help you update it.

---

## Step 1 — Look at the current list

Type:@todo.txt

```
@todo.txt show me my to-do list
```

---

## Step 2 — Add something new

Ask Copilot to add an item:
```
@todo.txt please add "buy a new notebook" to my to-do list
```

Then add something personal:
```
@todo.txt add "call my friend Sarah" to the list
```

---

## Step 3 — Mark something as done

Type:
```
@todo.txt mark "drink a glass of water" as done
```

(You can put a ✅ or a [x] next to it — just tell Copilot how you want it to look!)

---

## Step 4 — See what changed

Now type the slash command:
```
/diff
```

This shows you exactly what Copilot added or changed. Lines with `+` were added,
lines with `-` were removed.

---

## Step 5 — Try removing an item

Type:
```
@todo.txt please remove the item about the notebook
```

---

## Step 6 — Ask Copilot to reorganize

Type:
```
@todo.txt can you sort this list so the most important tasks are at the top?
```

---

## ✅ You're done!

You just learned how to edit files using plain English.
Move on to **[Exercise 04 — Slash Commands](../04-slash-commands/README.md)** when you're ready!

---

> **Tip:** You can ask Copilot to edit ANY file in this workspace — not just to-do lists!
