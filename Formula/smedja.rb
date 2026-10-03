# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.865"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6d30ea92c5c1060ac824baf5c7c8e3de6ae7cad1/smedja-darwin-arm64.tar.gz"
      sha256 "be020f83e3cbe47f877a32a785f2179cb339baf999ebeb9bfae51e14e41ca644"
    end
    on_intel do
      url "https://console.smedja.app/dl/6d30ea92c5c1060ac824baf5c7c8e3de6ae7cad1/smedja-darwin-amd64.tar.gz"
      sha256 "e899be63e9572e4a98a54fa42ae907e169f048f3878824ac645c73009b825f2b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6d30ea92c5c1060ac824baf5c7c8e3de6ae7cad1/smedja-linux-arm64.tar.gz"
      sha256 "63536dfdb098d1bfc4764e88a714f0f5d3a085d03fc58f4e1515afa468bccdb3"
    end
    on_intel do
      url "https://console.smedja.app/dl/6d30ea92c5c1060ac824baf5c7c8e3de6ae7cad1/smedja-linux-amd64.tar.gz"
      sha256 "e685383986e59aa2e75935071eb4ccfd51b56a8b900f8bcb1661a56fd31dd7ae"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
