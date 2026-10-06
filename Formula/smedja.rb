# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.973"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/88c2de1236a1e9ccc9f1019ea1a0dad95cbf6c30/smedja-darwin-arm64.tar.gz"
      sha256 "9a00c88524b17bd3c615bae28d08984fc6f8ccb5f42ab4d916e5dfac1c5d82dc"
    end
    on_intel do
      url "https://console.smedja.app/dl/88c2de1236a1e9ccc9f1019ea1a0dad95cbf6c30/smedja-darwin-amd64.tar.gz"
      sha256 "ce6f833975792ae24ea7c3cdc548efb75a96caf3837b2ba7fed530ca87e54018"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/88c2de1236a1e9ccc9f1019ea1a0dad95cbf6c30/smedja-linux-arm64.tar.gz"
      sha256 "49d6286a908b0fccf15570d32e3bd8da7bd8548a96ef2715f89985200f7a4a2d"
    end
    on_intel do
      url "https://console.smedja.app/dl/88c2de1236a1e9ccc9f1019ea1a0dad95cbf6c30/smedja-linux-amd64.tar.gz"
      sha256 "de85f2aded2c18bd5677e9eb62fee75073452d93b17a63ccf906bdd02cd981c7"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
