# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.982"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/cfb5fd44f2456c08ba67050e2e8bb48777c320f3/smedja-darwin-arm64.tar.gz"
      sha256 "c372eb801cc163e2b0da714a2dc53f2bf1f25d152cec8cbef3773d5463746ef9"
    end
    on_intel do
      url "https://console.smedja.app/dl/cfb5fd44f2456c08ba67050e2e8bb48777c320f3/smedja-darwin-amd64.tar.gz"
      sha256 "db82711984083380e0048b9e2cfe58e937a1d0c8bbc378eac7796a19903a8018"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/cfb5fd44f2456c08ba67050e2e8bb48777c320f3/smedja-linux-arm64.tar.gz"
      sha256 "53473423d899a5179e99bc5c56593095ed4aa623bf52276174320352fc3c3364"
    end
    on_intel do
      url "https://console.smedja.app/dl/cfb5fd44f2456c08ba67050e2e8bb48777c320f3/smedja-linux-amd64.tar.gz"
      sha256 "19ba81e5a53062ba9d85bdccd9c8d9d42926277e85562c3c59fc30eb15b12fe3"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
