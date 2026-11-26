cask "fused-render" do
  version "0.8.10"
  sha256 "25d3fc6a77fdf48c72953c506eca9156a938ab1ffe4bfc28e461f1aef62b123e"

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
