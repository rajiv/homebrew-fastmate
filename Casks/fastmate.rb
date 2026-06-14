cask "fastmate" do
  version "1.9.1"
  sha256 "8e8555fbe75232e9c182f4a11cc1c5447bd75f28ed24d407d3d6cb4d5e8f8538"

  url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
  name "Fastmate"
  desc "Native wrapper for Fastmail"
  homepage "https://github.com/joelekstrom/fastmate"

  livecheck do
    url :url
  end

  auto_updates false
  depends_on :macos

  app "Fastmate.app"

  zap trash: [
    "~/Library/Application Scripts/io.ekstrom.Fastmate",
    "~/Library/Containers/io.ekstrom.Fastmate",
    "~/Library/Saved Application State/io.ekstrom.Fastmate.savedState",
  ]
end
