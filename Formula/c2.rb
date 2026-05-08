class C2 < Formula
  desc "TUI command-and-control app for LLMs with text and voice interaction"
  homepage "https://github.com/jrniemiec/c2"
  url "https://github.com/jrniemiec/c2/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "242abe7d8e454f5c8ed6ea89f91fbc497a44676f5f1c4077bb9d301e0334ea24"
  license "MIT"

  depends_on "go" => :build
  depends_on "portaudio"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/c2 --version 2>&1", 1)
  end
end
