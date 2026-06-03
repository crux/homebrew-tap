cask "setzer" do
  version "0.1.2"
  sha256 "e25d9213ba506777d8ac6d2937db1f4fe2467630e53d58ded526e002378ebcb1"
  url "https://github.com/crux/setzer/releases/download/v#{version}/Setzer-#{version}.dmg"

  name "Setzer"
  desc "Local compositor for static sites — edit and publish via Git"
  homepage "https://github.com/crux/setzer"

  app "Setzer.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-rd", "com.apple.quarantine", "#{appdir}/Setzer.app"]
  end
end
