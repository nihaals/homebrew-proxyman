cask "proxyman-update" do
  version "4.11.0,49200"
  sha256 "51d4a0ef5b7819e347c4df1e4e3a3cfd10c0270813e851ed44ce97eac0c3067a"

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
