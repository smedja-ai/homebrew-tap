# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1051"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/f18a3352db74991ea5b5a1f9d23a86fabeb572b0/smedja-darwin-arm64.tar.gz"
      sha256 "83864d5e7c5a092caba7b7ee1f4f67d76e7d2b08d9d458df11ddf255d34fcd5c"
    end
    on_intel do
      url "https://console.smedja.app/dl/f18a3352db74991ea5b5a1f9d23a86fabeb572b0/smedja-darwin-amd64.tar.gz"
      sha256 "033c3bb2f5804b2b2419278a5333b30c8aef615d45e71df473a96ac520a31ab1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/f18a3352db74991ea5b5a1f9d23a86fabeb572b0/smedja-linux-arm64.tar.gz"
      sha256 "608acffda9583f2b3f9e07de0f723e12b92925ba3b75ab5628976110fba7ebf3"
    end
    on_intel do
      url "https://console.smedja.app/dl/f18a3352db74991ea5b5a1f9d23a86fabeb572b0/smedja-linux-amd64.tar.gz"
      sha256 "14808465f9c5f18c2140074382724d48cfcb0c95299c2045e5e8e2f1b96820bd"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
