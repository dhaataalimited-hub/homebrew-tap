# Homebrew cask for BRBuddy. Tools/release.sh fills in 0.1.0 and 97561252bd3ec8f7cb141c8008ce316389c1271a3b53933f5ba41083815d3492 and writes the result to
# build/release/brbuddy.rb, for the dhaataalimited-hub/homebrew-tap repository (Casks/brbuddy.rb).
cask "brbuddy" do
  version "0.1.0"
  sha256 "97561252bd3ec8f7cb141c8008ce316389c1271a3b53933f5ba41083815d3492"

  url "https://github.com/dhaataalimited-hub/brbuddy/releases/download/v#{version}/BRBuddy-#{version}.dmg"
  name "BRBuddy"
  desc "Keeps your Mac awake and guards the screen while your AI agent works"
  homepage "https://github.com/dhaataalimited-hub/brbuddy"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "BRBuddy.app"

  uninstall quit: "com.dhaataalimited.brbuddy"

  zap trash: [
    "~/Library/Application Support/BRBuddy",
    "~/Library/Preferences/com.dhaataalimited.brbuddy.plist",
  ]
end
