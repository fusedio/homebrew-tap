cask "fused-render-lite" do
  version "0.8.6"
  sha256 "cbe846c8181a32cb04edee3fdd28553f817df2e6c9683dff9264730f1173bbeb"

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
