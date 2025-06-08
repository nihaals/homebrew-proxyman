cask "proxyman-update" do
  version "5.21.0,52100"
  sha256 "e92c80e1123f171fa629ca413cf705bd66f93d6ab12871ddd619457cc897718f"

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
