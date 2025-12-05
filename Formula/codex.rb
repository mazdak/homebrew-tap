class Codex < Formula
  desc "Codex CLI"
  homepage "https://github.com/mazdak/codex"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/mazdak/codex/releases/download/rust-v#{version}/codex-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "replace-with-real-sha"
    end
    on_intel do
      url "https://github.com/mazdak/codex/releases/download/rust-v#{version}/codex-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "replace-with-real-sha"
    end
  end

  def install
    bin.install "codex"
  end

  test do
    system "#{bin}/codex", "--version"
  end
end
