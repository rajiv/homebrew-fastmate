cask "fastmate" do
  version "1.6.6"
  sha256 "a75034add0ba38685e950853be229bdf53408046d647f7d8fe7e13755f98afc3"

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
