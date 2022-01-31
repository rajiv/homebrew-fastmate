cask "fastmate" do
  if MacOS.version <= :mojave
    version "1.8.0"
    sha256 "b77a55c111cb42e3ca195638317a86061b1163e51138cc0cbddcee44c6f9e41e"
    url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
  else
    version "1.8.1"
    sha256 "4508e65eb6a85fbc6ff315c8d074bae5ead48a6b204220d940be6a2d49ab065b"
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
