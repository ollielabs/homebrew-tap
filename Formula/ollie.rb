# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.2.0/ollie-darwin-arm64.tar.gz"
      sha256 "4e938e430ea2741bfbf96846ac275bc99a87128434ae91316451a59c9aa7acca"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.2.0/ollie-darwin-x64.tar.gz"
      sha256 "f9b3035dd7c64d34c59fa042e8cffaa3aca684ec9b8a0e676271dcb26baec2c9"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
