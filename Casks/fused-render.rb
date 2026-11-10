cask "fused-render" do
  version "0.7.57"
  sha256 "84a48f729c19df077b62118c58c23a8ad5b594cab273a7b18ccd784d9ec8a4e0"

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
