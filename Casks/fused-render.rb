cask "fused-render" do
  version "0.2.4"
  sha256 "9509d1f30bd4849d1e99898b50f64226f3f9699d5cc96349656a9f20bc3a625b"

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
