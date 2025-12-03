cask "audiowhisper" do
  version "1.5.1"
  sha256 "848ba37f27bce463a1c29d7b58990af19ab9974f392ad8a75080f2a19cbd2b53"

  url "https://github.com/mazdak/AudioWhisper/releases/download/v#{version}/AudioWhisper.zip"
  name "AudioWhisper"
  desc "Menu bar app for voice transcription using Whisper AI"
  homepage "https://github.com/mazdak/AudioWhisper"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AudioWhisper.app"

  zap trash: [
    # App preferences and caches
    "~/Library/Preferences/com.audiowhisper.app.plist",
    "~/Library/Application Support/AudioWhisper",
    "~/Library/Caches/com.audiowhisper.app",
    # WhisperKit models (CoreML)
    "~/Documents/huggingface/models/argmaxinc/whisperkit-coreml",
    # MLX models - Parakeet (speech-to-text)
    "~/.cache/huggingface/hub/models--mlx-community--parakeet-*",
    # MLX models - LLMs used for semantic correction
    "~/.cache/huggingface/hub/models--mlx-community--Llama-*",
    "~/.cache/huggingface/hub/models--mlx-community--Qwen*",
  ]
end
