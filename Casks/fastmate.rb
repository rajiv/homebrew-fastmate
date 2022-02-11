cask "fastmate" do
  if MacOS.version <= :mojave
    version "1.8.0"
    sha256 "54e46f5c192c941a0c4f27364def9f1eee36850047c331a66377e3d151efeffe"
    url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
  else
    version "1.8.2"
    sha256 "6eb95d02f54bdfc08b462eae4f5c3bab76e5fa3c530f8b771d2dba6c424a1692"
    url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
    appcast "https://github.com/joelekstrom/fastmate/releases.atom"
  end

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
