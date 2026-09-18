cask "render-app" do
  version "0.9.2"
  sha256 "ec00ef76c2abf535bd467d289f7ae637a537be6901af6b146bb4ab935aa09f42"

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
