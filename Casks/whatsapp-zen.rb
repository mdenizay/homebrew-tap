cask "whatsapp-zen" do
  version "0.3.2"
  sha256 "ddc7ff5a64307f483f59e33e93be9ef900872bceac02785d4d1801117eda2b2c"

  url "https://github.com/mdenizay/whatsapp-zen/releases/download/v#{version}/WhatsApp-Zen-#{version}.zip"
  name "WhatsApp Zen"
  desc "Unofficial lightweight native WhatsApp client"
  homepage "https://github.com/mdenizay/whatsapp-zen"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "WhatsApp Zen.app"

  zap trash: "~/Library/Application Support/WhatsAppZen"

  caveats <<~EOS
    The app is not notarized. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "/Applications/WhatsApp Zen.app"
  EOS
end
