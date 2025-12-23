cask "zui" do
  version "1.1.0"
  sha256 "507a2d113565977dc9a183885419d26e12b0154cd36becb07da7ef7966eaa95c"

  url "https://github.com/brimdata/zui/releases/download/v#{version}/Zui-#{version}.dmg"
  name "Zui"
  desc "GUI for zed"
  homepage "https://github.com/brimdata/zui"

  app "Zui.app"
  
  livecheck do
    url :url
    strategy :github_latest
  end
end
