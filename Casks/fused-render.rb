cask "fused-render" do
  version "0.2.9"
  sha256 "51fad5fd75a369dd2a7f52e01d519bbcd7d633031c0bc849e11322bdbad70d2a"

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
