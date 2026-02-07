cask "audiowhisper" do
  version "2.1.0"
  sha256 "79d578f7e953318ad14d8a098cbe87a142c8d21d76553466eb91a7ae15579a3f"

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
