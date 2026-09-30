cask "zeus" do
  version "0.3.158"
  sha256 "be2721a819f6ab15132c919aee73a40bfeda9b50df8010b84bf67eb1591de924"

  url "https://github.com/imchenway/zeus/releases/download/v#{version}/Zeus-#{version}-arm64.dmg"
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
