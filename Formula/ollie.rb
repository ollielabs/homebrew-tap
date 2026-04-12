# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.5.1/ollie-darwin-arm64.tar.gz"
      sha256 "fbabb207959f8f8ae32d20bdb0aa73b056d8efd6155bd1816fe3dfc9ba501835"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.5.1/ollie-darwin-x64.tar.gz"
      sha256 "c7a4f89f263ffb0817a846fb5273edabe0dd434f1cc8c5c84eb67b5a465eb456"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
