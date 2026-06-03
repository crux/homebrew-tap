cask "setzer" do
  version "0.1.0"
  sha256 "f1822c28b698bfcd3b6e3e27307390dc60d813c070846e9bc79eca4b5f464a77"
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
