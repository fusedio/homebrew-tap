cask "fused-render" do
  version "0.7.46"
  sha256 "f13ed790f95c43eec609609fa3afb85ca739bd74dc9b5cb205eb2b9e2f60cc0d"

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
