cask "proxyman-update" do
  version "4.10.0,49100"
  sha256 "f824c2ac1b4479fc9038f18824cdf7776e593c5f6b926ad0ff154314ad851e03"

  url "https://download.proxyman.io/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "HTTP debugging proxy"
  homepage "https://proxyman.io/"

  livecheck do
    url "https://proxyman.io/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "proxyman"

  app "Proxyman.app"

  uninstall quit: "com.proxyman.NSProxy"
end
