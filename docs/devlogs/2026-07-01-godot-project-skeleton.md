# Devlog 001: Godot Project Skeleton

## What Changed

- Created `project.godot`, which makes this folder a Godot project.
- Created `scenes/main/Main.tscn`, the first main scene.
- Created `scripts/main/main.gd`, the script attached to the main scene.
- Created the starter folders listed in `AGENTS.md`.

## What This Teaches

- A Godot project starts from `project.godot`.
- A scene file (`.tscn`) stores nodes and their properties.
- A node is an object in the scene tree. The first scene uses `Node2D` because this will be a 2D game.
- A GDScript file (`.gd`) adds behavior to a node.
- `_ready()` runs when the node enters the scene tree and is ready to start.

## Manual Check

1. Open Godot.
2. Import or open this project folder.
3. Run the project.
4. Confirm the output panel prints: `Godot roguelite project initialized.`

