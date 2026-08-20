cask "zeus" do
  version "0.3.27"
  sha256 "f2a129717cdf623ab473436d7fde8ea0d4dfb0b3b049ad37bac0e167e0487c3c"

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
