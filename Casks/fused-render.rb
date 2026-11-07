cask "fused-render" do
  version "0.7.45"
  sha256 "5296ada0ee92cbf6d0e1f7482f7ad3e6fe65989d2578c8c2bfe62dbdfeab5e4f"

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
