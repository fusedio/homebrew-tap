# Fused Homebrew tap

Homebrew tap for [Fused](https://www.fused.io) tools.

## Fused Render

A local file explorer with Python-powered interactive HTML views — browse any
directory in the browser, preview ~40 file formats, and author pages that call
local Python. Ships as a signed + notarized macOS app.

```
brew install --cask fusedio/tap/fused-render
```

Or tap once, then install and upgrade like any cask:

```
brew tap fusedio/tap
brew install --cask fused-render
brew update && brew upgrade --cask fused-render
```

In a `brew bundle` `Brewfile`:

```ruby
tap "fusedio/tap"
cask "fused-render"
```

The cask installs `FusedRender.app` (macOS 11+). The app bundles its own
Python, the `fused` CLI, and rclone — no other dependencies. Versions are
published automatically by the
[fused-render release pipeline](https://github.com/fusedio/fused-render);
each release's DMG is built, signed, and notarized before the cask is bumped.

Run `brew update` before `brew upgrade --cask fused-render`. `brew
upgrade`/`brew outdated` only ever check the cask definition in Homebrew's
local clone of this tap, not GitHub directly — without `brew update` first,
Homebrew won't see a version bump merged here and `brew upgrade` will report
you're already up to date even when a newer release exists.

## Documentation

`brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).
