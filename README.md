# Homebrew Tap for Mazdak's Tools

This is a [Homebrew](https://brew.sh) tap for various tools and applications.

## Available Packages

### 🎙️ AudioWhisper (Cask)
A lightweight macOS menu bar app for quick audio transcription using OpenAI Whisper, Google Gemini, Local WhisperKit, or Nvidia Parakeet.

**Install:**
```bash
brew install audiowhisper
```

**Repository:** [mazdak/AudioWhisper](https://github.com/mazdak/AudioWhisper)

---

### 🤖 Codex (Formula)
OpenAI Codex CLI with a terminal UI for agentic coding.

**Install:**
```bash
brew install codex
```

**Repository:** [mazdak/codex](https://github.com/mazdak/codex)

---

### 🔧 LazyRedis (Formula)
A fast and lazy Terminal UI for inspecting and manipulating Redis databases.

**Install:**
```bash
brew install lazyredis
```

**Repository:** [mazdak/lazyredis](https://github.com/mazdak/lazyredis)

---

## Installation

First, tap this repository:

```bash
brew tap mazdak/tap
```

Then install any package:

```bash
# Install AudioWhisper
brew install audiowhisper

# Install Codex
brew install codex

# Install LazyRedis
brew install lazyredis

# Or install both
brew install audiowhisper codex lazyredis
```

## Updating

```bash
# Update Homebrew and all packages
brew update && brew upgrade

# Update specific package
brew upgrade audiowhisper
brew upgrade codex
brew upgrade lazyredis
```

## Uninstalling

```bash
# Uninstall a package
brew uninstall audiowhisper
brew uninstall codex
brew uninstall lazyredis

# Remove the tap (optional)
brew untap mazdak/tap
```

## Structure

```
homebrew-tap/
├── Formula/          # CLI tools and libraries
│   ├── codex.rb
│   └── lazyredis.rb
└── Casks/           # GUI applications
    └── audiowhisper.rb
```

## Contributing

If you encounter issues with any formula or cask, please report them in the respective project's issue tracker.

## License

Each package is licensed under its own license. See individual project repositories for details.
