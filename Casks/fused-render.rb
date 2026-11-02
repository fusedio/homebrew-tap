cask "fused-render" do
  version "0.7.20"
  sha256 "d3d7ff523c7ba984c72152e70cc6d9afc90fc7a196ef5624aba7bc47e4d6200d"

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
