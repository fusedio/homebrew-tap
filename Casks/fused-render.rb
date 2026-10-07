cask "fused-render" do
  version "0.6.20"
  sha256 "077d893de3a13cfc5aae5516c2792fe7f51f884f7066d26af202e4f6e5184ae2"

  url "https://d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/FusedRender-#{version}.dmg",
      verified: "d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/"
  name "Fused Render"
  desc "Local file explorer with Python-powered interactive HTML views"
  homepage "https://www.fused.io/"

  livecheck do
    skip "No version listing available for private S3 bucket"
  end

  depends_on macos: :big_sur

  app "FusedRender.app"

  uninstall quit: "io.fused.render"
end
