# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1055"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/be81cac14348b9871750a4f6927593c077096fd3/smedja-darwin-arm64.tar.gz"
      sha256 "20b31f6d93c35d622df6ad6fd71c68e9bf97124a8b33e9ae8bbd1f36616bf01a"
    end
    on_intel do
      url "https://console.smedja.app/dl/be81cac14348b9871750a4f6927593c077096fd3/smedja-darwin-amd64.tar.gz"
      sha256 "1778a681c3ea9f56b42375234b4614ffa86beb91871a41557cd57779dfb030b9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/be81cac14348b9871750a4f6927593c077096fd3/smedja-linux-arm64.tar.gz"
      sha256 "7715881247434737a593868fdef95a98825dcb99118e7abefa3613f77daac316"
    end
    on_intel do
      url "https://console.smedja.app/dl/be81cac14348b9871750a4f6927593c077096fd3/smedja-linux-amd64.tar.gz"
      sha256 "2c780d8e979e76eee8de1fa0a2b54bb7f8492a07ffcecd5b2cd9c1f6f5e464b4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
