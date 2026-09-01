cask "buildwithme" do
  version "0.1.6,176"
  sha256 "4d604ea5f7f8a5e3f5fdeb777d1912aa81b9bdbd198cf68ce0fd866dcc1113d2"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.6/BuildWithMe-0.1.6-176.dmg",
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
