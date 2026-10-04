cask "whatsapp-zen" do
  version "0.3.0"
  sha256 "f87a0decc565afb373bd471bd60dd52a0f69acc360d0a82b5ef6030a3abb4673"

  url "https://github.com/mdenizay/whatsapp-zen/releases/download/v#{version}/WhatsApp-Zen-#{version}.zip"
  name "WhatsApp Zen"
  desc "Unofficial lightweight native WhatsApp client"
  homepage "https://github.com/mdenizay/whatsapp-zen"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "WhatsApp Zen.app"

  zap trash: "~/Library/Application Support/WhatsAppZen"

  caveats <<~EOS
    The app is not notarized. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "/Applications/WhatsApp Zen.app"
  EOS
end
