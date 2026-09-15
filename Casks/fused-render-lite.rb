cask "fused-render-lite" do
  version "0.8.5"
  sha256 "7ef99e1bed66c29d63c4132f12619bdd04384e6485e2f94115a44837aceb03a8"

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
