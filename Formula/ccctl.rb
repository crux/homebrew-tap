class Ccctl < Formula
  desc "Inspect and manage Claude Code sessions and project folders"
  homepage "https://github.com/crux/ccctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crux/ccctl/releases/download/v0.1.0/ccctl-0.1.0-darwin-arm64.tar.gz"
      sha256 "d7fcfc22b0dd2d521ae6a4be8fbf4be6694e42cd6b64f33112f1dee73e630b73"
    end
    on_intel do
      url "https://github.com/crux/ccctl/releases/download/v0.1.0/ccctl-0.1.0-darwin-amd64.tar.gz"
      sha256 "7a17bacb16ea7f5fddd785b56bd7b04bb71c3a4b3327d27d44b863bb0a01cc73"
    end
  end

  depends_on :macos

  def install
    bin.install "ccctl"
    generate_completions_from_executable(bin/"ccctl", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccctl --version")
  end
end
