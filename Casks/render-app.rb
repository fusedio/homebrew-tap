cask "render-app" do
  version "0.8.8"
  sha256 "6e3650600270f0bf0f77666802d6b3d78d6bbc68e4ce7a8d1b8e8c510eca7583"

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
