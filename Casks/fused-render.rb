cask "fused-render" do
  version "0.7.48"
  sha256 "45db7cceee7c26b9569aaf2e29db3fad4677e9f478fb53fd5cfc03b1ff267515"

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
