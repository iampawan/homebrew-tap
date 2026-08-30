cask "buildwithme" do
  version "0.1.3,173"
  sha256 "341500095563978c83283e38334edb72a91d6744246208a266b9e886b51660b2"

  url "https://github.com/iampawan/BuildWithMe-releases/releases/download/v0.1.3/BuildWithMe-0.1.3-173.dmg",
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
