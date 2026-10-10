# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1054"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/eaee3dcf953212ed5ca1547078dfcefb0e4744d9/smedja-darwin-arm64.tar.gz"
      sha256 "0d362644f5e4e3d8e9b9c1ca96ddabc2245857863d2e668b8a96f6d8fdf19c2f"
    end
    on_intel do
      url "https://console.smedja.app/dl/eaee3dcf953212ed5ca1547078dfcefb0e4744d9/smedja-darwin-amd64.tar.gz"
      sha256 "d9e926920530334300d7269338130cbb5450a0fab0ba51970099dee9fb438082"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/eaee3dcf953212ed5ca1547078dfcefb0e4744d9/smedja-linux-arm64.tar.gz"
      sha256 "bb6cfdba70f543aa551cda0924587c1274aa8eb160e7d95a75d766ca0bc967a0"
    end
    on_intel do
      url "https://console.smedja.app/dl/eaee3dcf953212ed5ca1547078dfcefb0e4744d9/smedja-linux-amd64.tar.gz"
      sha256 "52714038bc2cd0710087c25fd4ec57e8a649957e4083a5274493e1c4fd20005c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
