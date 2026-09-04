cask "fused-render" do
  version "0.5.2"
  sha256 "2e8633c5e806f6db942dcfae6ff6defd39687271b5752f63149cb5b638986605"

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
