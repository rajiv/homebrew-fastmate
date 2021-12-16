cask "fastmate" do
  version "1.7.0"
  sha256 "58d69d1f806e2926c4bb24d8668338cef45a6e44a27c52309a98ed9d403e8839"

  url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
  appcast "https://github.com/joelekstrom/fastmate/releases.atom"
  name "Fastmate"
  desc "Native wrapper for Fastmail"
  homepage "https://github.com/joelekstrom/fastmate"

  auto_updates false

  app "Fastmate.app"

  zap trash: [
    "~/Library/Application Scripts/io.ekstrom.Fastmate",
    "~/Library/Containers/io.ekstrom.Fastmate",
    "~/Library/Saved Application State/io.ekstrom.Fastmate.savedState",
  ]
end
