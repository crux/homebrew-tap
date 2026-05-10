cask "schlonk-pad" do
  version "0.20260510.0"
  sha256 "0ce03778977e8bb0d111111f1ce191c02f3a5536a9f0e7199fc0f201d9b631fa"
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
