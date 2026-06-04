cask "schlonk-pad-dev" do
  version "2026.06.04.8"
  sha256 "03fa7d2cbb3b8e192769c65a706b419bc5dcee7bdfe3d4aa2b93ae824ba59fc3"
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
