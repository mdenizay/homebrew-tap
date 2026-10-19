cask "nerd" do
  version "0.10.1"
  sha256 "1c53f4d311980701438f5a8828d3e9988930894c697bc8a9bdf305173936bf76"

  url "https://github.com/mdenizay/nerd/releases/download/v#{version}/Nerd-#{version}.zip"
  name "Nerd"
  desc "Local development environment for PHP, Laravel, Next.js and Astro"
  homepage "https://github.com/mdenizay/nerd"

  auto_updates true
  depends_on macos: :sequoia
  depends_on formula: "caddy"

  app "Nerd.app"

  uninstall quit: "com.mdenizay.nerd"

  zap trash: [
    "~/.nerd",
    "~/Library/Preferences/com.mdenizay.nerd.plist",
  ]

  caveats <<~EOS
    Nerd lives in the menu bar. On first launch, use the Overview screen to set up
    the .test DNS resolver (asks for your password once) and to add ~/.nerd/bin
    to your PATH.
  EOS
end
