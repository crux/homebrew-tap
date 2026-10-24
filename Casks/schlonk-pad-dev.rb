cask "schlonk-pad-dev" do
  version "2026.10.24.10"
  sha256 "bbbf0dad9794294ec7023c5fa04284061b1bcb2db13f01bf0d2f52196ab0e38c"
  url "https://github.com/crux/schlonk-pad/releases/download/dev/SchlonkPad-dev-#{version}.dmg"

  name "schlonk-pad (dev)"
  desc "macOS GUI for downloading videos from social media posts (dev channel)"
  homepage "https://github.com/crux/schlonk-pad"

  app "SchlonkPad Dev.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "{{appdir}}/SchlonkPad Dev.app"]
  end
end
