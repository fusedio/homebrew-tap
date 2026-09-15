cask "render-app" do
  version "0.8.7"
  sha256 "1518f005443c1f624c196b81353588c156ddbf10b78f6cad2fb365eb022aa6a4"

  url "https://github.com/fusedio/fused-render-app/releases/download/v#{version}/RenderApp-#{version}.dmg"
  name "Fused Render App"
  desc "Lightweight runtime for .fused apps: Python-powered interactive HTML views"
  homepage "https://github.com/fusedio/fused-render-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RenderApp.app"

  uninstall quit: "io.fused.render.app"
end
