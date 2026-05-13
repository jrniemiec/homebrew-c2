class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  license "MIT"
  version "0.8.8"

  on_arm do
    url "https://github.com/jrniemiec/c2/releases/download/v#{version}/c2-v#{version}-darwin-arm64.tar.gz"
    sha256 "3b933aa7b039fc7d0fab814bb94f1556f495933cd7bc4ece5be185aa2be52af1"
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
