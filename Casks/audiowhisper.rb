cask "audiowhisper" do
  version "1.5.0"
  sha256 "b606953c6dee4a03ed186d44b089e953c07195ffef5e80e70b40adaec6567eac"

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
    "~/Library/Preferences/com.audiowhisper.app.plist",
    "~/Library/Application Support/AudioWhisper",
    "~/Library/Caches/com.audiowhisper.app",
  ]
end
