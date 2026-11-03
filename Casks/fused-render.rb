cask "fused-render" do
  version "0.7.24"
  sha256 "d1d7357dfb81372b8cd91d65c58d89a8f318c88fb21a4f6743904ecc126f57f9"

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
