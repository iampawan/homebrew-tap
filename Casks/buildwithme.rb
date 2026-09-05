cask "buildwithme" do
  version "0.2.2,187"
  sha256 "7a333d5a1b87c89cd1ecc0d4a02f731a2eef525a3983ad948b05a25cdf5a296c"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.2.2/BuildWithMe-0.2.2-187.dmg",
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
