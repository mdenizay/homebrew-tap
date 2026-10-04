cask "whatsapp-zen" do
  version "0.3.1"
  sha256 "4c2cb6d1d2da02591977f949640dbde4a5181a0e1590b874f71aa85584f9b66b"

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
