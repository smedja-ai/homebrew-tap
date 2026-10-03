# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.867"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/55ffb599cf8d647a91b842d770eb5548971a6824/smedja-darwin-arm64.tar.gz"
      sha256 "f2c1b11e087aca2cde6e63763c447594d4fd17b1066637d52d4e40567500b3f6"
    end
    on_intel do
      url "https://console.smedja.app/dl/55ffb599cf8d647a91b842d770eb5548971a6824/smedja-darwin-amd64.tar.gz"
      sha256 "e39d02c58c2938d16a8d6420dabe6aad8704ed063563651f4fb9dde03f65dfd0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/55ffb599cf8d647a91b842d770eb5548971a6824/smedja-linux-arm64.tar.gz"
      sha256 "b91914fb37df83589f3db469ccdefdeeb8d22fc7328452df958882c913ef273b"
    end
    on_intel do
      url "https://console.smedja.app/dl/55ffb599cf8d647a91b842d770eb5548971a6824/smedja-linux-amd64.tar.gz"
      sha256 "7e8fe042a47ce239d4ff622c9675926724123171f35c1192e49e0aec36a1f6be"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
