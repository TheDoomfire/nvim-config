# Beginner Neovim Config

Learning configurations.

## TODO:

Learn vim motions.

### Add these

- **Copy/past** I cant seem to use keybindings to copy and past from outside of neovim.
- **Show vim modes more clearly** I only show at bottom but perhaps on top too and maybe somewhere else?
- **Tabs** to switch faster. And to remember what I worked on last time.
- **List all projects** that have a .git folder? So I can pick what to work on today.
- **Have more files open** at the same time + maybe terminal open? So I can works on related components easier.
- **Easy Git** I do git push/pull daily. Hopefully somewhere where the commands is saved if I have to do stuff I dont do reguarly.
- **Auto formatting + linting** perhaps when I write/save files it just auto format + lint it? Otherwise use github actions on each push.
- **Python .venv at start** I want my virtual enviroment to just work on start.
- **Auto save** every x seconds/minutes write to files? Perhaps also have auto push?
- **Comment out a line?** Using: vim-commentary
- **Split Window** to work in split screen.

**Start**
Choose project, open projects with everything open.

**While**
Auto prettify, lint, save.

**End**
Write to file, format/lint, push to git.

### Fixes

- Telescope

1. Remove .git (and all .gitignore) from search.

- Neo tree

1. Show all files if there is place for it.
1. Have the **file system reveal left** on start. To show the file tree at start.

## Keys

1. dd - deletes the line.
1. yyp - yank line + past down.
