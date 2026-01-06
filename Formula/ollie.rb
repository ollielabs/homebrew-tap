# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.1.5/ollie-darwin-arm64.tar.gz"
      sha256 "cc7fc0f2d132c42848399e648a1d615e6dd4c0a9c17508e1ca84e3d2f4bff5ce"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.1.5/ollie-darwin-x64.tar.gz"
      sha256 "61a249bf2db28af633a2b2c43301b97b26a647220eedacd3f71531acaba534b2"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
