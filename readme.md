# Installation and preparations

## To make search with `telescope` works:

```bash
brew install ripgrep
```

## Ctags proper works

```bash
brew install ctags
```

## Markdown plugin

```bash
npm install -g remark
```

## Vimspector for .net core development

Default gadget `netcoredbg` doesn't work under mac os widn m1/m2 chip.

This error is shown in vimspector logs (`:VimspectorToggleLog` command)

```bash
questionsFailed command 'configurationDone' : 0x80131c3c
```

So, after search I found out that netcoredbg compiled for arm is required, and found one here - [netcoredbg](https://github.com/codeprefect/netcoredbg/releases/tag/2.2.0-950)

Download it and put in directory with file replacement (do backup if you want)

```bash
 ~/.local/share/nvim/site/pack/packer/start/vimspector/gadgets/macos/netcoredbg
```

After that error will disappear
