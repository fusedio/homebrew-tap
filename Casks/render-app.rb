cask "render-app" do
  version "0.8.9"
  sha256 "793c275fb0c1050405321657a5c465360008b828c49cfde1038187815f47c661"

  url "https://github.com/fusedio/fused-render-lite/releases/download/v#{version}/RenderApp-#{version}.dmg"
  name "Render App"
  desc "Lightweight runtime for .fused apps: Python-powered interactive HTML views"
  homepage "https://github.com/fusedio/fused-render-lite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RenderApp.app"

  uninstall quit: "io.fused.render.app"
end
