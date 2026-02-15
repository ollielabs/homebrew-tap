# typed: false
# frozen_string_literal: true

class Ollie < Formula
  desc "Agentic coding tool powered by Ollama - local, private, and fast"
  homepage "https://github.com/ollielabs/olliecode"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.4.0/ollie-darwin-arm64.tar.gz"
      sha256 "c7b70a99963e247a0c713e171080aeb056c82d2cbbbcfbbd317ac3cb5bb09610"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ollielabs/olliecode/releases/download/v0.4.0/ollie-darwin-x64.tar.gz"
      sha256 "de2cd1e3121687064ac680ce754da821ac03e9a5ae78dbb841b84bcb99702ee5"
    end
  end

  def install
    bin.install "ollie"
  end

  test do
    system "#{bin}/ollie", "--version"
  end
end
