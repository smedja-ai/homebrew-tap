# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1502"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a8f16a7984c0b3dff59fc66b5746e41951444b7e/smedja-darwin-arm64.tar.gz"
      sha256 "3a323bde37a926af89ac26ebccb8c3275a2d6c1d13d645525512b09f28c066d0"
    end
    on_intel do
      url "https://console.smedja.app/dl/a8f16a7984c0b3dff59fc66b5746e41951444b7e/smedja-darwin-amd64.tar.gz"
      sha256 "2cc4b2b145b8d07bc8fd55b5713da633d3fc2628fc8c9534edca5ae889332110"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a8f16a7984c0b3dff59fc66b5746e41951444b7e/smedja-linux-arm64.tar.gz"
      sha256 "a903fcda28da9fcb647029cea87b5a8acca15c9478a7b9ddf4b53742c4ea56ec"
    end
    on_intel do
      url "https://console.smedja.app/dl/a8f16a7984c0b3dff59fc66b5746e41951444b7e/smedja-linux-amd64.tar.gz"
      sha256 "82ae9dda2a4426d7ba5854a8addd42248114161d0399cceb2e0279466ce62869"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
