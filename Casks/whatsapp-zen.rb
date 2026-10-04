cask "whatsapp-zen" do
  version "0.7.0"
  sha256 "ed21f47c5e29505e37af257ffb877e557e30c972a50d8e8c9bb12c338fe79c89"

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
