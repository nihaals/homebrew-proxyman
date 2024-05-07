cask "proxyman-update" do
  version "5.3.0,50300"
  sha256 "4250aeacb1ee1377d663b4b739f140a54a33cf7c4fc79bf38b3e322c8d797e99"

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
