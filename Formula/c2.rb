class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  license "MIT"
  version "0.8.5"

  on_arm do
    url "https://github.com/jrniemiec/c2/releases/download/v#{version}/c2-v#{version}-darwin-arm64.tar.gz"
    sha256 "6ae75dc17d2c372be9d5d9fc62fa6855771f7a24ab19e6a1301343b9c40278c1"
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
