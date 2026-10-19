cask "nerd" do
  version "0.7.5"
  sha256 "8a4d66126f154bd7e372f155c075c8ec78eb40167253080376d4fc2e8064c338"

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
