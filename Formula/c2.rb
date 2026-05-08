class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  license "MIT"
  version "0.8.7"

  on_arm do
    url "https://github.com/jrniemiec/c2/releases/download/v#{version}/c2-v#{version}-darwin-arm64.tar.gz"
    sha256 "c0b18bf4c9d5a30571a9ab98af921279bd58b3a8ba38335d50620331ba7d4e58"
  end

  depends_on "portaudio"

  def install
    bin.install "bin/c2"
    lib.install Dir["lib/*.dylib"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/c2 --version")
  end
end
