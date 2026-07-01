# AGENTS.md

## Project Mission

- This is a beginner-friendly Godot learning project, a resume portfolio project, and an open-source project.
- The primary goal is learning from start to finish while building a small but complete playable game. Shipping the game matters, but learning matters more.
- The project should visibly demonstrate two kinds of growth: AI-assisted development ability and the author's own programming ability.
- Use Chinese for planning notes, README content, dev logs, and user-facing documentation unless the user asks otherwise.

## Learning-First Collaboration

- Treat this project as a guided learning journey, not a black-box outsourcing task.
- Before running important commands or making non-trivial changes, explain what will happen, why it is needed, and what the user should observe afterward.
- After running commands, summarize the important output in beginner-friendly language.
- When using Git, explain concepts such as working tree, staging area, commit, branch, remote, push, pull, and merge/rebase as they appear.
- When adding Godot code or scenes, explain the relevant Godot concepts: node, scene, script, signal, exported variable, collision layer, resource, and game loop.
- Prefer "teach then do" for new concepts: show the command or code, explain it briefly, then execute or implement.
- Do not rush through setup steps just because they are easy for an experienced developer. Setup is part of what the user wants to learn.
- Invite the user to perform some repeated operations themselves once they have seen the pattern, especially Git status/add/commit/push and Godot editor steps.
- Keep a visible trail of learning in `docs/` once the project grows: development logs, command notes, design decisions, and mistakes fixed.
- Keep concise conversation handoff notes in `docs/conversations/` when a session makes meaningful decisions, teaches important concepts, or leaves clear next steps. Prefer summaries over full transcripts.

## Product Direction

- Engine: Godot 4.x.
- Language: GDScript.
- Target platform: Windows PC.
- Genre: 2D top-down auto-shooter roguelite.
- Reference feel: Vampire Survivors style movement and combat, with a light Brotato-style upgrade/shop loop.
- Recommended first visual theme: neon training arena / sci-fi trial field, because it supports simple placeholder art and readable effects.

## MVP Scope

Build the first playable version around this loop:

- Player uses WASD movement and automatically aims at the nearest enemy.
- Enemies include three basic types: normal chaser, fast low-health enemy, and slow high-health enemy.
- Weapons include three basic types: straight projectile, orbiting weapon, and area explosion.
- Kills drop experience; leveling opens a three-option upgrade choice.
- Between waves, show three light shop/equipment/stat options.
- A run lasts about five minutes and ends with a small boss.
- Losing happens when the player dies; winning happens when the boss is defeated.
- The result screen shows level, kill count, survival time, and win/loss state.

Do not add multiplayer, networking, complex save systems, meta-progression, or large content systems until the MVP is playable.

## Engineering Standards

- Prefer mainstream Godot 4.x practices and readable GDScript over clever abstractions.
- Use typed GDScript for new code where practical, including typed variables, return types, and exported properties.
- Keep scenes and scripts focused. Split by responsibility when a file starts mixing unrelated behavior.
- Use Godot signals for decoupling gameplay events such as damage, death, experience pickup, level-up, wave completion, and game-state transitions.
- Prefer data-driven resources for upgrades, weapons, enemies, and waves once more than a few variants exist.
- Start with placeholder shapes and simple effects; replace art only after the gameplay loop works.
- Keep gameplay math easy to tune. Avoid hard-coded magic numbers in many places; expose tuning values through exported variables or small resource files.
- Add comments only for non-obvious gameplay logic, design intent, or Godot-specific behavior that a beginner may need to learn.
- When uncertain, implement the smallest playable slice that can be tested in the editor.

## Suggested Project Structure

Use this structure unless there is a strong reason to change it:

```text
assets/        Temporary and final art, audio, fonts, and VFX assets.
docs/          Development logs, design notes, screenshots, and portfolio notes.
resources/     Godot resources such as upgrade, weapon, enemy, and wave data.
scenes/        Godot scenes grouped by feature or screen.
scripts/       GDScript files grouped by feature or scene owner.
ui/            UI scenes, themes, icons, and screen-specific scripts.
builds/        Local export output; keep this ignored by Git.
```

Suggested gameplay modules:

- `Player`: movement, health, experience, level-up state, and player stat modifiers.
- `Enemy`: health, speed, contact damage, and target tracking.
- `Weapon`: cooldowns, target selection, projectile spawning, orbiting damage, and area damage.
- `Upgrade`: name, description, rarity if needed, and stat or weapon changes.
- `WaveManager`: spawn timing, enemy mix, wave transitions, and boss spawn.
- `GameState`: start, combat, upgrade choice, shop choice, pause, victory, defeat, and results.

## AI Collaboration Rules

- Before changing code, read `AGENTS.md`, `README.md`, and the relevant scenes/scripts.
- For a new or resumed conversation, also read the latest relevant file in `docs/conversations/` when it exists.
- Explain the intent of non-trivial edits before making them.
- Keep changes small and reviewable. Prefer one gameplay feature, bugfix, or documentation update per branch or commit.
- Preserve the learning value of the project. When adding code, make it understandable to a beginner who is learning Godot and GDScript.
- Use Codex to explain code, generate small modules, write dev logs, draft README updates, review diffs, and propose tests.
- Do not replace the author's learning process with opaque generated systems. The final code should be explainable in an interview.
- If the user says they are not learning enough, slow down immediately and switch to explanation-first mode.
- If a request is ambiguous, first inspect the project and infer from existing patterns. Ask only when the decision materially affects scope, design, or learning goals.

## Verification Expectations

For each milestone, verify manually in Godot:

- The player can move and does not leave the intended play area.
- Enemies can spawn, chase the player, and deal damage.
- Weapons automatically attack the nearest valid target.
- Kills drop experience and can trigger a three-option level-up UI.
- Wave completion can enter the shop choice flow.
- Death enters defeat results; boss defeat enters victory results.
- The game remains reasonably smooth with about 100 enemies on screen.

If the Godot CLI is available, check the installed version before using engine-specific commands:

```powershell
godot --version
```

Always mention which verification was actually run. If Godot is not installed or not on `PATH`, say so and provide manual editor steps instead.

## Git And GitHub Workflow

- Keep `main` stable and playable.
- Use feature branches for work, for example `feature/player-movement`, `feature/basic-enemies`, or `fix/projectile-hitbox`.
- Use small commits with clear messages. Good examples:
  - `docs: add project roadmap`
  - `feat: add player movement prototype`
  - `feat: add basic enemy spawner`
  - `fix: clamp player inside arena`
- Pull before starting work when a remote exists: `git pull --rebase`.
- Review changes before committing: `git status` and `git diff`.
- Push branches to GitHub and use pull requests as a learning record and portfolio artifact.
- If GitHub CLI is installed, prefer `gh repo create`, `gh pr create`, and `gh pr view` for repository and PR operations.
- Never commit secrets, private tokens, paid asset source files, or generated export builds.

### Git Learning Notes

- `git status` answers "What changed locally, and what branch am I on?"
- `git add <file>` moves selected changes into the staging area, which means "include this in the next commit."
- `git commit -m "message"` creates a local snapshot with a human-readable reason.
- `git remote -v` shows which GitHub repository this local project is connected to.
- `git push -u origin main` uploads local commits from `main` to GitHub and sets `origin/main` as the tracked upstream branch.
- `git pull --rebase` downloads remote changes and replays local commits on top, keeping history easier to read for a beginner project.
- `AGENTS.md` tells Codex how to behave in this project.
- `README.md` explains the project to GitHub visitors, recruiters, and the future author.
- `.gitignore` prevents generated files, local settings, exports, and temporary files from being committed.
- `LICENSE` tells others what they are legally allowed to do with the open-source project.

## Review Guidelines

When reviewing this project, prioritize:

- Bugs that break the playable loop.
- Godot scene/script coupling that will make beginner-level iteration hard.
- Missing verification for movement, combat, upgrades, waves, or result screens.
- Over-engineering that makes the MVP harder to finish.
- Code that the author would struggle to explain during an interview.
