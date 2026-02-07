class Lazyredis < Formula
  desc "A fast and lazy Terminal UI for inspecting and manipulating Redis databases"
  homepage "https://github.com/mazdak/lazyredis"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mazdak/lazyredis/releases/download/#{version}/lazyredis-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c5d1cd326c4167bb9d4bc8936d033c992e133a91227a13cdc843360b68d9ee8f"
    end

    on_intel do
      url "https://github.com/mazdak/lazyredis/archive/refs/tags/#{version}.tar.gz"
      sha256 "2f66aa6bb8744a6dbcedfae6e1fa482286b7b86a3b5c1d6e9ec66208ef8104d8"
      depends_on "rust" => :build
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mazdak/lazyredis/releases/download/#{version}/lazyredis-#{version}-aarch64-unknown-linux-gnu.zip"
      sha256 "430ce300102ff5e30161f75392a00d7722b8773ec1ae75790836f9ab4484df8f"
    end

    on_intel do
      url "https://github.com/mazdak/lazyredis/releases/download/#{version}/lazyredis-#{version}-x86_64-unknown-linux-gnu.zip"
      sha256 "596115b9fd89e5aaa6a5fafa5fc65ecf2a00e639e4c2dd2596773881dcf32669"
    end
  end

  def install
    if File.exist?("Cargo.toml")
      system "cargo", "install", *std_cargo_args
    else
      bin.install "lazyredis"
    end
  end

  test do
    system "#{bin}/lazyredis", "--version"
  end
end
