cask "proxyman-update" do
  version "4.16.0,49700"
  sha256 "2d5feb4c380d6256185b5941fa9b8e54170d7316d09adf3025d9c643022e1409"

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
