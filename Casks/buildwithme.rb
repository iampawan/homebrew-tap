cask "buildwithme" do
  version "0.1.4,174"
  sha256 "8e6819fcbec68ec0237c9e633674a5a25cad3c970da334ebbbdbea85de9a4b14"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.4/BuildWithMe-0.1.4-174.dmg",
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
