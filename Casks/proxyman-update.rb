cask "proxyman-update" do
  version "26.0.1,260001"
  sha256 "09bc03852f524549f0f46b1294f33fb01ee1003af0c720f9ac54ac26a4163706"

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
  depends_on macos: :sonoma

  app "Proxyman.app"
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"
end
