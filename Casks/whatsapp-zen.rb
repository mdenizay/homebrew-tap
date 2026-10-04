cask "whatsapp-zen" do
  version "0.3.5"
  sha256 "39b6968ee710fde98b4aae988d25cf9c00c8b4a45d89ecd061b2771b745dcf69"

  url "https://github.com/mdenizay/whatsapp-zen/releases/download/v#{version}/WhatsApp-Zen-#{version}.zip"
  name "WhatsApp Zen"
  desc "Unofficial lightweight native WhatsApp client"
  homepage "https://github.com/mdenizay/whatsapp-zen"

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "WhatsApp Zen.app"

  zap trash: "~/Library/Application Support/WhatsAppZen"
end
