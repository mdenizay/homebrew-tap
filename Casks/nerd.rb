cask "nerd" do
  version "0.6.1"
  sha256 "fd2aaa7a97fb0b3b2b93e93b23b80627fddd5f3d94c32be16500dbbb3384ba4c"

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
