cask "dotify" do
  version "0.1.1"
  sha256 "27054027d20d2ae260bd9cc7bf181335c9b3372e83781c01d6ed8d3ee7c20e9a"

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
