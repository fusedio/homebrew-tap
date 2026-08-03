cask "fused-render" do
  version "0.3.18"
  sha256 "f4e5345e229998c7fa8d0c46fd994486da82e0acacc2f5ef12d727822414e1d7"

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
end
