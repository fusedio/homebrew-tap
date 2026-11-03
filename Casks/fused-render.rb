cask "fused-render" do
  version "0.7.26"
  sha256 "97bac26d9c3e0334d4796290e5316b21a3254e4f34017687e109a9c0babf5e53"

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
