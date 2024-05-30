cask "proxyman-update" do
  version "5.4.0,50400"
  sha256 "e8256e4716ebb752a3a60fd9e22fa84322c2728defa4b87fbc86dabb3286a7c2"

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
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"

  uninstall quit: "com.proxyman.NSProxy"
end
