cask "kasandra" do
  version "1.1.0"
  sha256 "701597c2992ea646b5d08380b669d7dbf731540be6f8f3ce0c2a31f52b90fd3e"

  url "https://github.com/mdenizay/miesql/releases/download/v#{version}/Kasandra_#{version}_universal.dmg"
  name "Kasandra"
  desc "Fast, native SQL client for PostgreSQL, MySQL, MariaDB, SQLite and Redis"
  homepage "https://github.com/mdenizay/miesql"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Kasandra.app"

  zap trash: [
    "~/Library/Application Support/Kasandra",
    "~/Library/Application Support/com.mdenizay.miesql",
    "~/Library/Caches/com.mdenizay.miesql",
    "~/Library/WebKit/com.mdenizay.miesql",
  ]
end
