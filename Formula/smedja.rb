# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.985"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3b9d39c63ee89f095d22d265d92c51dd6ab673dd/smedja-darwin-arm64.tar.gz"
      sha256 "c372eb801cc163e2b0da714a2dc53f2bf1f25d152cec8cbef3773d5463746ef9"
    end
    on_intel do
      url "https://console.smedja.app/dl/3b9d39c63ee89f095d22d265d92c51dd6ab673dd/smedja-darwin-amd64.tar.gz"
      sha256 "db82711984083380e0048b9e2cfe58e937a1d0c8bbc378eac7796a19903a8018"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3b9d39c63ee89f095d22d265d92c51dd6ab673dd/smedja-linux-arm64.tar.gz"
      sha256 "30c5ee113e212ec35c9be74498db8e05940f19df7bbfcc36e1b36231206b887d"
    end
    on_intel do
      url "https://console.smedja.app/dl/3b9d39c63ee89f095d22d265d92c51dd6ab673dd/smedja-linux-amd64.tar.gz"
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
