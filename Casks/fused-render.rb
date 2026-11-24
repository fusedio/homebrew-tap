cask "fused-render" do
  version "0.8.3"
  sha256 "be118a2523642b61778fb2aab6dc35dff405f408f4c65aaf9e37fc60a1f0b1a9"

  url "https://d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/FusedRender-#{version}.dmg"
  name "Fused Render"
  desc "Local file explorer with Python-powered interactive HTML views"
  homepage "https://www.fused.io/"

  livecheck do
    skip "No version listing available for private S3 bucket"
  end

  depends_on macos: :big_sur

  app "Fused Render.app"

  uninstall quit: "io.fused.render"
end
