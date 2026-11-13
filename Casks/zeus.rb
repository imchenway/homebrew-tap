cask "zeus" do
  version "0.4.60"
  sha256 "008a2078f9ce343159c7e5c0a80a5cf3cdcfd1de6a7372d8caa72eff18272421"

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
