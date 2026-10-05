cask "whatsapp-zen" do
  version "0.8.1"
  sha256 "7db03ead5fe3679ba94100e50711ca22f6c06f5dbf78d444367db9bb8688874e"

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
