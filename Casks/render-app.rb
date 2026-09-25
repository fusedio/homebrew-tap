cask "render-app" do
  version "0.10.0"
  sha256 "0973b52f84430f735a6745186b224e81aa8e065cc64fc34fa5a791e6f9225071"

  url "https://d2ic19jpchjovp.cloudfront.net/render-app-dmgs/RenderApp-#{version}.dmg",
      verified: "d2ic19jpchjovp.cloudfront.net/render-app-dmgs/"
  name "Render App"
  desc "Lightweight runtime for .fused apps: Python-powered interactive HTML views"
  homepage "https://github.com/fusedio/fused-render-lite"

  livecheck do
    url "https://github.com/fusedio/fused-render-lite/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RenderApp.app"

  uninstall quit: "io.fused.render.app"
end
