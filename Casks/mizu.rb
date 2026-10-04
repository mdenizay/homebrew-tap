cask "mizu" do
  version "0.1.0"
  sha256 "85bda353c3bd24e27f46fd42e67351814fee9ac51555d29c9dc8ceaa60f76751"

  url "https://github.com/mdenizay/mizu-browser/releases/download/v#{version}/Mizu-#{version}.zip"
  name "Mizu"
  desc "Calm, light web browser with built-in ad blocking"
  homepage "https://github.com/mdenizay/mizu-browser"

  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Mizu.app"

  zap trash: [
    "~/Library/Application Support/Mizu",
    "~/Library/Caches/com.mdenizay.mizu",
    "~/Library/Preferences/com.mdenizay.mizu.plist",
    "~/Library/WebKit/com.mdenizay.mizu",
  ]
end
