cask "render-app" do
  version "0.8.9"
  sha256 "1518f005443c1f624c196b81353588c156ddbf10b78f6cad2fb365eb022aa6a4"

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
