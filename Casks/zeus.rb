cask "zeus" do
  version "0.3.69"
  sha256 "237db4f6bf4477d15bd815021fb3591fc44a9c9ee985bfc349633cca54871024"

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
