cask "buildwithme" do
  version "0.1.5,175"
  sha256 "1aa7bbadbcc42c29f3291a8934e68f30b6c0bf03f9076090c5e084441d16bd57"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.5/BuildWithMe-0.1.5-175.dmg",
      verified: "github.com/iampawan/BuildWithMe-releases/releases/download/"
  name "BuildWithMe"
  desc "Native workspace for building software with coding agents"
  homepage "https://buildwithme.app/"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "BuildWithMe.app"

  zap trash: [
    "~/Library/Application Support/BuildWithMe",
    "~/Library/Caches/app.buildwithme.mac",
    "~/Library/Preferences/app.buildwithme.mac.plist",
    "~/Library/Saved Application State/app.buildwithme.mac.savedState",
  ]
end
