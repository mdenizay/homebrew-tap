cask "dotify" do
  version "0.1.5"
  sha256 "d393c91d12b0e58b8ec3aaf0c506679a01feb2ce0679ab42daafccd3097f9855"

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
