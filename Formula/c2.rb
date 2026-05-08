class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  license "MIT"
  version "0.8.4"

  on_arm do
    url "https://github.com/jrniemiec/c2/releases/download/v#{version}/c2-v#{version}-darwin-arm64.tar.gz"
    sha256 "99df3a571e0a8ee89663c58c2bfa1772bfeeff05c6b14442334ad94d0c9ac77b"
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
