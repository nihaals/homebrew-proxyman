cask "proxyman-update" do
  version "5.0.0,50000"
  sha256 "a13d83e0e4333ed2eaac0fa848fca458e0ec6eeaf5f89e8dbd893eaf2dc7fbb0"

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
