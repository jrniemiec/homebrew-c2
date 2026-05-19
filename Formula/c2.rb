class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  license "MIT"
  version "0.9.1"

  on_arm do
    url "https://github.com/jrniemiec/c2/releases/download/v#{version}/c2-v#{version}-darwin-arm64.tar.gz"
    sha256 "dcf41bb547c042bda7f738e1a912ec7f615a9f7a1eed72a9ebeeccde6089dd00"
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
