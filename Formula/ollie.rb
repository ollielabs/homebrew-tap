# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.1.6/ollie-darwin-arm64.tar.gz"
      sha256 "aaa2196304aa50cc194d0dd306251f1c9f0f962f1bcb399f4f4a6eaae0991af9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.1.6/ollie-darwin-x64.tar.gz"
      sha256 "aee4303e85f759daac1907c691730b4aeb2fabfab6d6204b497a2f0ee6458c34"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
