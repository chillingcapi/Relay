# Fonts

Static assets the Evenesce hub downloads at runtime over `raw.githubusercontent.com`.
Nothing here is bundled into the script, so **renaming or deleting a file breaks the
live hub**. Add new files instead of moving existing ones.

## Layout

| Path | Used by |
| --- | --- |
| `fonts/` | The font picker in `Evenesce/Utilities/Library.lua`. One `.ttf` per face, filename matches the picker entry's `Name`. `InterSemibold.ttf` and `ArchivoExpandedBlack.ttf` are also the hub's default body and brand fonts. |
| `sounds/` | `Evenesce/Utilities/Shared.lua`. `ModAlert.mp3` is the mod-in-server alert, fetched with `HttpGet` and played through `getcustomasset` because Roblox audio privacy blocks the uploaded asset. |
| `loaders/` | Pasted into the Luarmor dashboard by hand. Not fetched from here by any script. |

## Adding a font

1. Drop the `.ttf` in `fonts/`, named exactly as it should appear in the picker.
2. Add `{ Name = "<filename without .ttf>" }` to `FontData.List` in `Library.lua`.
3. `tools/InstallStudioFonts.ps1` in the hub repo installs the same set into Studio.
