cask "zeus" do
  version "0.4.96"
  sha256 "d781052378b6b3db3ac1e36e6fd39b3b03b538a0c65f4d953c5c9cbbd8ad44b4"

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
