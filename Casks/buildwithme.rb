cask "buildwithme" do
  version "0.1.3,171"
  sha256 "708ccebf5a71eb3212bd66634351ef43c2946e9a212e7fd4130dba274bfcd000"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.3/BuildWithMe-0.1.3-171.dmg",
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
