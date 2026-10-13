# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1236"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2218111d4b7e5a54773ca0a80acff6bc85bc8c7e/smedja-darwin-arm64.tar.gz"
      sha256 "23ad4f6f86a735a7378a7e77c9130738db42287cfe7018a31af202781e31529d"
    end
    on_intel do
      url "https://console.smedja.app/dl/2218111d4b7e5a54773ca0a80acff6bc85bc8c7e/smedja-darwin-amd64.tar.gz"
      sha256 "570c5af1ac24658ad3d13854affc4dfef2dc852fffb5f0f7cfcbd5bf8d4dd9fc"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2218111d4b7e5a54773ca0a80acff6bc85bc8c7e/smedja-linux-arm64.tar.gz"
      sha256 "f19d5a609e908aa1ce692c76690a60dd748355ef1700696fb11e4d07e59d7035"
    end
    on_intel do
      url "https://console.smedja.app/dl/2218111d4b7e5a54773ca0a80acff6bc85bc8c7e/smedja-linux-amd64.tar.gz"
      sha256 "c8476ea4adb4540c0cd4dae076d9b48a0f86d7a6fdac90d4e95d7e8e9c1dbf96"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
