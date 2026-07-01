# Devlog 002: Visible First Screen

## What Changed

- Added a dark background to the main scene.
- Added a title label and a short lesson note.
- Added an arena floor rectangle.
- Added a cyan player placeholder rectangle and a small label.
- Updated the main script to reference `PlayerPlaceholder` when the scene starts.

## What This Teaches

- A gray game window usually means the project is running but no visible nodes have been added.
- `ColorRect` is a simple Godot `Control` node that draws a colored rectangle.
- `Label` is a `Control` node that draws text.
- The Scene dock in Godot should now show child nodes under `Main`.
- `$PlayerPlaceholder` is shorthand for finding a child node named `PlayerPlaceholder`.
- `@onready` waits until the scene is ready before trying to find that child node.

## Manual Check

1. Open the project in Godot.
2. Open `scenes/main/Main.tscn`.
3. Check that the Scene dock contains `Background`, `Title`, `LessonNote`, `ArenaFloor`, `PlayerPlaceholder`, and `PlayerLabel`.
4. Run the project.
5. Confirm that the game window shows a dark screen, text, and a cyan square in the center.

