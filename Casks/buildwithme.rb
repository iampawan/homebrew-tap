cask "buildwithme" do
  version "0.2.0,181"
  sha256 "263a10cb74f0ee449c611b13f2fdcb894d5a1056bbeb3e13bd9cc6e427de3a1d"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.2.0/BuildWithMe-0.2.0-181.dmg",
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
