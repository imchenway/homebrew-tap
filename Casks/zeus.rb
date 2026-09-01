cask "zeus" do
  version "0.3.93"
  sha256 "1b2180cc884f5e6b5967ed0b3e1d94d0be0d5275f8f581ca033f07ff71529ef8"

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
