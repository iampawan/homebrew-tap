cask "buildwithme" do
  version "0.1.2,169"
  sha256 "33a36fa9902386d586691ae55a4fa6457c99f43536d4a4ce1d9954907f3caf86"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.2/BuildWithMe-0.1.2-169.dmg",
      verified: "github.com/iampawan/BuildWithMe-releases/releases/download/"
  name "BuildWithMe"
  desc "Native workspace for building software with coding agents"
  homepage "https://buildwithme.app/"

  auto_updates true
  depends_on macos: :tahoe

  app "BuildWithMe.app"

  zap trash: [
    "~/Library/Application Support/BuildWithMe",
    "~/Library/Caches/app.buildwithme.mac",
    "~/Library/Preferences/app.buildwithme.mac.plist",
    "~/Library/Saved Application State/app.buildwithme.mac.savedState",
  ]
end
