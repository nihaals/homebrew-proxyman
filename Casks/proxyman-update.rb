cask "proxyman-update" do
  version "4.12.0,49300"
  sha256 "01a48bb5f90b7652d1b549c61b7720b67dbd5cb9ba77918eb11c48b4a03103ec"

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
