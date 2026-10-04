cask "whatsapp-zen" do
  version "0.3.3"
  sha256 "aae9e924851dd6759e2d783bb3f38cc10d57657936c57b83df403ecc531d931f"

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
