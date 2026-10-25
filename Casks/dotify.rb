cask "dotify" do
  version "0.1.3"
  sha256 "4da108a7f7d49348aaab60a37c6b237c8e3ad000f25d0ad6448c476becf8de0e"

  url "https://github.com/mdenizay/dotify/releases/download/v#{version}/Dotify-#{version}.zip"
  name "Dotify"
  desc "Pixel art editor and sprite animation studio for indie game developers"
  homepage "https://github.com/mdenizay/dotify"

  auto_updates true
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Dotify.app"

  uninstall quit: "app.dotify.desktop"

  zap trash: [
    "~/Library/Application Support/app.dotify.desktop",
    "~/Library/Caches/app.dotify.desktop",
    "~/Library/Preferences/app.dotify.desktop.plist",
    "~/Library/WebKit/app.dotify.desktop",
  ]
end
