cask "schlonk-pad-dev" do
  version "2026.05.10.1"
  sha256 "573f4fcda128b6a43ea6408118ba38abcc3d2833c29a176580b505a11e79b7ff"
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
