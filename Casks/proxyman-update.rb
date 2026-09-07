cask "proxyman-update" do
  version "6.17.0,61700"
  sha256 "533e622c3f7cdf9d92beb6ba22ac0582eaf7ad6acb03fe080f11acb0498c7a56"

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
