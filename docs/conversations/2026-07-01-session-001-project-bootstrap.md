# Session 001: Project Bootstrap And Learning Workflow

## Summary

Started a Godot 4.x 2D auto-shooter roguelite learning project. The user clarified that the main goal is learning the full game development process, not simply having Codex finish the game quickly.

The project is now connected to GitHub and has a minimal Godot project skeleton on a feature branch.

## Decisions

- Use Godot 4.x with GDScript.
- Build a 2D top-down auto-shooter roguelite inspired by Vampire Survivors and Brotato.
- Use `AGENTS.md` as the durable Codex instruction file.
- Prioritize learning-first collaboration: explain commands, files, and Godot concepts before or while doing work.
- Use Git branches and pull requests to practice a mainstream team workflow.
- Keep concise conversation notes in `docs/conversations/` so future threads can resume context.

## Commands And Concepts

- `git status`: shows current branch and local changes.
- `git add <file>`: stages changes for the next commit.
- `git commit -m "message"`: creates a local snapshot.
- `git remote add origin <url>`: connects the local repo to GitHub.
- `git push -u origin main`: uploads a local branch and tracks the remote branch.
- `git pull --rebase`: gets remote changes and replays local commits on top.
- `gh auth login`: logs GitHub CLI into GitHub for command-line GitHub operations.
- `godot_console --headless --path . --quit`: checks that Godot can open and run the project without launching the editor UI.

## Files Changed

- `AGENTS.md`: project rules, learning-first workflow, Git notes.
- `README.md`: project overview for GitHub and portfolio readers.
- `.gitignore`: excludes Godot-generated files, builds, local settings, and temporary files.
- `LICENSE`: MIT open-source license.
- `project.godot`: Godot project configuration.
- `scenes/main/Main.tscn`: first main scene.
- `scripts/main/main.gd`: script attached to the main scene.
- `docs/devlogs/2026-07-01-godot-project-skeleton.md`: first development log.

## Current Git State

- Repository: `https://github.com/ZhangDaLi-666/godot-roguelite.git`
- Base branch: `main`
- Current feature branch: `feature/init-godot-project`
- Latest local Godot skeleton commit before this note: `67240e8 feat: initialize Godot project skeleton`
- The feature branch should be pushed and then opened as a pull request when the user is ready to practice that workflow.

## Next Steps

1. Let the user practice pushing the feature branch:

   ```powershell
   git status
   git push -u origin feature/init-godot-project
   ```

2. Open a pull request from `feature/init-godot-project` into `main`.
3. Review what `project.godot`, `Main.tscn`, and `main.gd` do.
4. Start the next lesson: player movement with a visible placeholder player.

