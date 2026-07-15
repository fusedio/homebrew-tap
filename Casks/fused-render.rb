cask "fused-render" do
  version "0.2.8"
  sha256 "64f6884d480564bf39dca299c04a0d82fe2248f485c1e24232203472d45e4583"

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
