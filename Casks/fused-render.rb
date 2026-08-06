cask "fused-render" do
  version "0.3.20"
  sha256 "ecd5f9aa1cf9b7d506b09c3475a08a6a247dc87f1d65ce035ab5d1643c12d559"

  url "https://d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/FusedRender-#{version}.dmg",
      verified: "d2ic19jpchjovp.cloudfront.net/fused-render-dmgs/"
  name "Fused Render"
  desc "Local file explorer with Python-powered interactive HTML views"
  homepage "https://www.fused.io/"

  livecheck do
    skip "No version listing available for private S3 bucket"
  end

  depends_on macos: :big_sur

  app "FusedRender.app"

  preflight do
    was_running = system("/usr/bin/pgrep", "-xq", "FusedRender")
    FileUtils.touch("#{staged_path}/.was_running") if was_running
  end

  postflight do
    if File.exist?("#{staged_path}/.was_running")
      system_command "/usr/bin/open", args: ["-a", "#{appdir}/FusedRender.app"]
      FileUtils.rm("#{staged_path}/.was_running")
    end
  end

  uninstall quit: "io.fused.render"
end
