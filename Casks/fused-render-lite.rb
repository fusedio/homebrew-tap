cask "fused-render-lite" do
  version "0.8.4"
  sha256 "3ba4b8a124d20c608718e00199b50d5bc78d4b32d4cd56d0c604addb9b55cdfa"

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
