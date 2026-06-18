cask "setzer" do
  version "0.2.1"
  sha256 "a536b58b53ebe2117947e8e2de391612b06799a1896ab6dc59c8edfe87194e29"
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
