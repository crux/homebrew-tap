cask "schlonk-pad-dev" do
  version "2026.05.10.3"
  sha256 "d9c9b14184846925b17266adabd7d8ec159b43a01440a1b5ea94ad4278c5ef42"
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
