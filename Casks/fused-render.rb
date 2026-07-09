cask "fused-render" do
  version "0.2.0"
  sha256 "e41b9a3938e1042e4a7e4a84c15d1aa6c02721ca5b399ab566c952e3f8ea9a0b"

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
