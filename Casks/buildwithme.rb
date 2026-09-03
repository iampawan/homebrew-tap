cask "buildwithme" do
  version "0.2.0,183"
  sha256 "0dd93b2d87ee9f34ebe283a8c010b137a1830d1839e541211bcb1d8e45bd70ca"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.2.0/BuildWithMe-0.2.0-183.dmg",
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
