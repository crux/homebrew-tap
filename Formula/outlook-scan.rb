class OutlookScan < Formula
  desc "Read, search and draft Microsoft 365 mail from the command line"
  homepage "https://github.com/crux/outlook-scan"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/crux/outlook-scan/releases/download/v0.1.0/outlook-scan-0.1.0-darwin-arm64.tar.gz"
      sha256 "c29c6644479beda423ebe45e12e9c4e55c4cd24d441ee72f8923d642b9712cab"
    end
    on_intel do
      url "https://github.com/crux/outlook-scan/releases/download/v0.1.0/outlook-scan-0.1.0-darwin-amd64.tar.gz"
      sha256 "b6e01073d330d4fd0cf181075476ca0a91e683b121efd6c782d3fe70f5d73358"
    end
  end

  depends_on :macos

  def install
    bin.install "outlook-scan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/outlook-scan --version")
  end
end
