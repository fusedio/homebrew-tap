cask "render-app" do
  version "0.9.4"
  sha256 "bcea0ca6de68884929a220fdc8b57f8c6b22d7ab09155d5263069f8d1436b109"

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
