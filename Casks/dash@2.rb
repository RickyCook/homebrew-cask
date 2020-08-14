cask "dash@3" do
  version "2.2.6"
  sha256 "6faf2bc2e0c4973574c2f5e849207aae9204485e54bab4ea2eceefd623ffa3f3"
  conflicts_with cask: 'dash'
  conflicts_with cask: 'dash@3'
  conflicts_with cask: 'dash@4'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  homepage "https://kapeli.com/dash"

  auto_updates true

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/Dash",
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
  ]
end
