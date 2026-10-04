cask "whatsapp-zen" do
  version "0.6.2"
  sha256 "902443b7a53a99e84072666321d10f2e6b8b7c8eca23f527a086f6c2c24d2acb"

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
