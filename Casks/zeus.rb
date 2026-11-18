cask "zeus" do
  version "0.4.74"
  sha256 "3ce35a9d77136c5916b7b0219fb4e609f333daece8c5b677464a3c42a2c04508"

  url "https://zeus-download.hyphatech.cn/zeus/releases/#{version}/Zeus-#{version}-arm64.dmg"
  name "Zeus"
  desc "Local-first AI development workbench"
  homepage "https://github.com/imchenway/zeus"

  depends_on :macos
  depends_on arch: :arm64

  app "Zeus.app"

  uninstall quit: "dev.hypha.zeus"

  zap trash: [
    "~/Library/Application Support/Zeus",
    "~/Library/Caches/dev.hypha.zeus",
    "~/Library/Logs/Zeus",
    "~/Library/Preferences/dev.hypha.zeus.plist",
  ]
end
