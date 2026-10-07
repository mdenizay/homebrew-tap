cask "whatsapp-zen" do
  version "1.0.5"
  sha256 "d01be2b31bd13d2b03308ace76c0a8088fbf54ef2497fa52296cd67ce31310c3"

  url "https://github.com/mdenizay/whatsapp-zen/releases/download/v#{version}/WhatsApp-Zen-#{version}.zip"
  name "WhatsApp Zen"
  desc "Unofficial lightweight native WhatsApp client"
  homepage "https://github.com/mdenizay/whatsapp-zen"

  auto_updates true
  depends_on macos: :tahoe

  app "WhatsApp Zen.app"

  zap trash: "~/Library/Application Support/WhatsAppZen"
end
