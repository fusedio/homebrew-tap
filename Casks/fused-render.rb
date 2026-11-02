cask "fused-render" do
  version "0.7.19"
  sha256 "673b3803af7fa010b13b1f0cb664f12083e54a31717c5370c6b08207d9af1802"

  url "https://d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/FusedRender-#{version}.dmg"
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
