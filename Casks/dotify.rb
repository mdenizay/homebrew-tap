cask "dotify" do
  version "0.1.0"
  sha256 "c32b03437fb65ff05018810c5b3244d31ee3505f946d86588e640b7d0f34daa8"

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
