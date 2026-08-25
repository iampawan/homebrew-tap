cask "buildwithme" do
  version "0.1.1,166"
  sha256 "94e4d70d6757c3e1033b09f5e384055c14587f9958dfe70230add95a44016225"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.1/BuildWithMe-0.1.1-166.dmg",
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
