cask "fused-render-lite" do
  version "0.8.3"
  sha256 "1983d97ed608822e3e7a8c0e963e40ff0e549fe9bbad2a3a2acb0e2a5b9dc00e"

  url "https://github.com/fusedio/fused-render-lite/releases/download/v#{version}/RenderLite-#{version}.dmg"
  name "Fused Render Lite"
  desc "Lightweight runtime for .fused apps: Python-powered interactive HTML views"
  homepage "https://github.com/fusedio/fused-render-lite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RenderLite.app"

  uninstall quit: "io.fused.render.lite"
end
