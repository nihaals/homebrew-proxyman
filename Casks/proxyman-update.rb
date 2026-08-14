cask "proxyman-update" do
  version "6.15.0,61500"
  sha256 "094615f2e42340d83ab2aef5f7f14ac2dfa6767e31d5cf4b203370f92b922497"

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
  depends_on macos: :ventura

  app "Proxyman.app"
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"
end
