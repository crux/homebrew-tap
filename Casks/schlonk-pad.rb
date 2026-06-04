cask "schlonk-pad" do
  version "0.20260604.0"
  sha256 "44b7d8c1fcf57e12e3fac7a369177cfb7a2ac1f50af8c656b36f8a4293074048"
  url "https://github.com/crux/schlonk-pad/releases/download/v#{version}/SchlonkPad-#{version}.dmg"

  name "schlonk-pad"
  desc "macOS GUI for downloading videos from social media posts"
  homepage "https://github.com/crux/schlonk-pad"

  app "SchlonkPad.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/SchlonkPad.app"]
  end
end
