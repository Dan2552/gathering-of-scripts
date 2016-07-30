# Gathering

I've been building little scripts to help my development throughout the years, as you do. Most of these do nothing amazing on their own, but they do simplify some things and are both useful in your working environment and for building scripts on-top of. **Contributions very welcome.**

## Installation

If you want all of the scripts available to you run:
```
cd ~
git clone https://github.com/Dan2552/gathering-of-scripts.git .gathering
~/.gathering/gathering-first-time-setup
```

From then onwards if you ever want to update your scripts you can just run:
```bash
update-gathering
```

## Security

Running scripts written by somebody else isn't always the best idea, but you knew that already didn't you?

It's always a controversial topic when you download bash scripts from the internet, but to be honest it's no different downloading and running anything from the internet in any other language or any other source. Just be careful, if you're really worried, read the source.

## Most notable

Git
- **`branch`** - switching branches with  ease.
- **`find-conflicts`** - it's in the name
- **`just-continue`** - fantastic tool for rebasing, merging and cherry-picking. No longer type out `git add .`, `git rebase --continue`, etc. Will automatically check for conflicts (using `find-conflicts`) and continue if it detects none. If your project happens to be a Rails project, it will also try and automatically resolve conflicts using `schema`.

GitHub
- **`prs`** - quickly open your browser in the Pull Requests for the GitHub repo in your working directory
- **`open-pr`** - quickly open your browser to open a Pull Request for the GitHub repo in your working directory

Ruby
- **`schema`** - for automatically resolving conflicts on `Schema.rb` on rails projects
- **`ensure_bundle`** (`source common-ruby`)

iOS
- **`clean-derived-data`** - because xcode sucks
- **`xcode`** - to launch xcode from command-line after fulfilling dependencies using bundler and cocoapods.

macOS
- **`keychain-functions`** - to source for simple functions for reading and writing logins within Keychain
- **`wifi`** - For when turning your WiFi off and on again helps resolve your connection issues. Run `wifi forever` to continously check and resolve your connection.
- **`fresh-kill`** - Kills every running app except Finder and Terminal. Useful for when you've simply got too many things open.

Bash scripting (`source common-functions`)
- **`retry`**
- **`question`**
- **`check_sudo`**

## Requirements

Dependant on what script, but here's the general requirements.
- Bash (this isn't required to be your shell, just that it's installed)
- Ruby
- Some may require macOS due to relying on `open`. Shouldn't be too hard to make it compatible with other OSs if you wanted to contribute ;)
