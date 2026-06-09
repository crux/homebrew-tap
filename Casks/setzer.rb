cask "setzer" do
  version "0.1.3"
  sha256 "e617bf6021c4693ebe8da1bd0156470db2cc603dcee84794fe6760c107b3445b"
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
