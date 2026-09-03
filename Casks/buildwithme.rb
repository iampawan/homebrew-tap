cask "buildwithme" do
  version "0.2.1,185"
  sha256 "2dd2d93b6d27914bf6f762e6c3c697f148405d3f887d9fa7ac8a2dfd60ef7b93"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.2.1/BuildWithMe-0.2.1-185.dmg",
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
