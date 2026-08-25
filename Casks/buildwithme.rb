cask "buildwithme" do
  version "0.1.0,160"
  sha256 "a72dad80015f10700857da6975baf93487183ba5f1e1861825ae41a367a51ca5"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.0/BuildWithMe-0.1.0-160.dmg",
      verified: "github.com/iampawan/BuildWithMe-releases/releases/download/"
  name "BuildWithMe"
  desc "Native workspace for building software with coding agents"
  homepage "https://buildwithme.app/"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "BuildWithMe.app"

  zap trash: [
    "~/Library/Application Support/BuildWithMe",
    "~/Library/Caches/app.buildwithme.mac",
    "~/Library/Preferences/app.buildwithme.mac.plist",
    "~/Library/Saved Application State/app.buildwithme.mac.savedState",
  ]
end
