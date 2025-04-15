cask "proxyman-update" do
  version "5.18.0,51800"
  sha256 "0b82cab893c7e00633b9e76d3427beda272e9c3a12f639b281b577232c9d8a9a"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "HTTP debugging proxy"
  homepage "https://proxyman.com/"

  livecheck do
    url "https://proxyman.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "proxyman"
  depends_on macos: ">= :big_sur"

  app "Proxyman.app"
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"
end
