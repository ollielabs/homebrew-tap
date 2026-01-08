# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.3.0/ollie-darwin-arm64.tar.gz"
      sha256 "3408de041e6388f48bc3d158b1baefa4fe39eebbd062b0970b1ba9364c05c9bb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.3.0/ollie-darwin-x64.tar.gz"
      sha256 "f68cec9707bc6a7812d6367b35c11eb474c1f07b5ec5aad095a48a97b6a7d455"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
