cask "fused-render" do
  version "0.5.6"
  sha256 "3b7d8fd63bf8492f576e962a26c7bbfbfb9676c8b1d1fd125c4626b9339381f0"

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
