class Scanner < Formula
  desc "AI-powered project scanner with TUI output and optional automated fixes"
  homepage "https://github.com/getresq/scanner"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getresq/scanner/releases/download/v0.3.1/scanner-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "8f0c280a3960de4888e8b47dfcc5b8592b716ba3f651fe1fc582218313c3c54c"
    end

    on_intel do
      url "https://github.com/getresq/scanner/releases/download/v0.3.1/scanner-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "351c4fcb0ef62e7a28a2ca889b140bca1b57e6cfd7d276dc14d2c7b6c82e18e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getresq/scanner/releases/download/v0.3.1/scanner-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78c23477d8cb86fdeb592d9a9c39d65f087d49b3ff5a5e39be2cd30ac917d404"
    end

    on_intel do
      url "https://github.com/getresq/scanner/releases/download/v0.3.1/scanner-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dce43d1ed1a701173fe48e21bb9a90f95def511a3a49a00f53e8730f6fd4f92f"
    end
  end

  def install
    bin.install "scanner"
  end

  test do
    system "#{bin}/scanner", "--version"
  end
end
