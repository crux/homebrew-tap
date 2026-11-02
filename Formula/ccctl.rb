class Ccctl < Formula
  desc "Inspect and manage Claude Code sessions and project folders"
  homepage "https://github.com/crux/ccctl"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crux/ccctl/releases/download/v0.1.2/ccctl-0.1.2-darwin-arm64.tar.gz"
      sha256 "c91d041f215cc32fdc0982bc062c3c510f15329e5031e79522335863c02514fa"
    end
    on_intel do
      url "https://github.com/crux/ccctl/releases/download/v0.1.2/ccctl-0.1.2-darwin-amd64.tar.gz"
      sha256 "b75d937803c9852eec3f5d7604de908d6c52a80db0362d89000f74f6bc915eee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/crux/ccctl/releases/download/v0.1.2/ccctl-0.1.2-linux-arm64.tar.gz"
      sha256 "39d842c370f2c7e0cc47850813bf674fa8986bb8996f511dd20a9d8795ab3259"
    end
    on_intel do
      url "https://github.com/crux/ccctl/releases/download/v0.1.2/ccctl-0.1.2-linux-amd64.tar.gz"
      sha256 "227440e6cfa902b3647c5d1b10df8620c658a43d5105ea93380c6094914124e2"
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
