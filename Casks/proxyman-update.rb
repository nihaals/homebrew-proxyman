cask "proxyman-update" do
  version "5.1.1,50101"
  sha256 "43b1e783cb53f693d2826b958bb0674d89d9b8a76576aad42ab01f12bf93b051"

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
