cask "render-app" do
  version "0.10.1"
  sha256 "acfc5106be72b343e517cb10ddcd1cc6f6cb66823d89e461c9592d97a3c27744"

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
