cask "schlonk-pad-dev" do
  version "2026.05.10.4"
  sha256 "4370ef3027bd6ba1acd2d847b808a3ede6da92f2ad9f40525ccaacfa3dcea0b2"
  url "https://github.com/crux/schlonk-pad/releases/download/dev/SchlonkPad-dev-#{version}.dmg"

  name "schlonk-pad (dev)"
  desc "macOS GUI for downloading videos from social media posts (dev channel)"
  homepage "https://github.com/crux/schlonk-pad"

  app "SchlonkPad Dev.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/SchlonkPad Dev.app"]
  end
end
