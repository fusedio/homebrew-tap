cask "fused-render" do
  version "0.2.2"
  sha256 "5a17c1343ed7c3dbb389a8743f4b38f5fbecf9537f9c1323a705febe0858c1a1"

  url "https://fused-magic.s3.us-west-2.amazonaws.com/fused-render-dmgs/FusedRender-#{version}.dmg",
      verified: "fused-magic.s3.us-west-2.amazonaws.com/fused-render-dmgs/"
  name "Fused Render"
  desc "Local file explorer with Python-powered interactive HTML views"
  homepage "https://www.fused.io/"

  livecheck do
    skip "No version listing available for private S3 bucket"
  end

  depends_on macos: :big_sur

  app "FusedRender.app"
end
