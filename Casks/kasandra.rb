cask "kasandra" do
  version "1.2.0"
  sha256 "8d73603db285d4181b90cb5e259c6a0a521241e1fe7d119144815e027979e34e"

  url "https://github.com/mdenizay/kasandra/releases/download/v#{version}/Kasandra_#{version}_universal.dmg"
  name "Kasandra"
  desc "Fast, native SQL client for PostgreSQL, MySQL, MariaDB, SQLite and Redis"
  homepage "https://github.com/mdenizay/kasandra"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Kasandra.app"

  zap trash: [
    "~/Library/Application Support/Kasandra",
    "~/Library/Application Support/com.mdenizay.miesql",
    "~/Library/Caches/com.mdenizay.miesql",
    "~/Library/WebKit/com.mdenizay.miesql",
  ]
end
