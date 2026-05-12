cask "schlonk-pad-dev" do
  version "2026.05.12.5"
  sha256 "5bf9ffcad4d302b23a4497aed06c59704ab6f9eb216b6024b235ea6daf9574cd"
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
