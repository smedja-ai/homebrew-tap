# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1239"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/768deb6f39c41ddef7ddacfe1374c2aa9378532a/smedja-darwin-arm64.tar.gz"
      sha256 "82d0539d8002bd05673e3ca10797dd6a1a2492f7cfd569831590c514b39d6977"
    end
    on_intel do
      url "https://console.smedja.app/dl/768deb6f39c41ddef7ddacfe1374c2aa9378532a/smedja-darwin-amd64.tar.gz"
      sha256 "bacbb4e4512a37ebcd4aa06f88d34ea2527b0df0e3263e67069b10cdb8a2601b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/768deb6f39c41ddef7ddacfe1374c2aa9378532a/smedja-linux-arm64.tar.gz"
      sha256 "109fe6fba085471747f0217c88136785838d8cdc695b8b65acbaea58e2b7a0a2"
    end
    on_intel do
      url "https://console.smedja.app/dl/768deb6f39c41ddef7ddacfe1374c2aa9378532a/smedja-linux-amd64.tar.gz"
      sha256 "e309210cae2268663190ad77709b7cfb551162f226eabea82740f96aae6c9024"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
