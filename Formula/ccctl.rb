class Ccctl < Formula
  desc "Inspect and manage Claude Code sessions and project folders"
  homepage "https://github.com/crux/ccctl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crux/ccctl/releases/download/v0.1.1/ccctl-0.1.1-darwin-arm64.tar.gz"
      sha256 "f1b1f01ef241d5a415e5be1d62139e9a0cba55122c23a30252c4b9aff29ac0e1"
    end
    on_intel do
      url "https://github.com/crux/ccctl/releases/download/v0.1.1/ccctl-0.1.1-darwin-amd64.tar.gz"
      sha256 "fbf5dafb177f3b4a289016b57da3c35079f0a2f1361dd7221f1c5f0a8be300f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/crux/ccctl/releases/download/v0.1.1/ccctl-0.1.1-linux-arm64.tar.gz"
      sha256 "3dda929ae4fe959f0daffa08c53f7ac88f602175d719402558562e9fdf810f2d"
    end
    on_intel do
      url "https://github.com/crux/ccctl/releases/download/v0.1.1/ccctl-0.1.1-linux-amd64.tar.gz"
      sha256 "7047813613d37b9f4e3b439976cfd24d0658f96e43d514026e23dada15d1da78"
    end
  end

  def install
    bin.install "ccctl"
    generate_completions_from_executable(bin/"ccctl", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccctl --version")
  end
end
