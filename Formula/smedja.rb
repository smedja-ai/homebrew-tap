# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.914"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/af9198a06cba80e22e371eb7decf73e3ec803bc9/smedja-darwin-arm64.tar.gz"
      sha256 "a0a0025bdae6f83adf7499138126dcdcd78b3a954047910cdb67dc891bcce1a5"
    end
    on_intel do
      url "https://console.smedja.app/dl/af9198a06cba80e22e371eb7decf73e3ec803bc9/smedja-darwin-amd64.tar.gz"
      sha256 "d68a375fbcc5f5177e65a8985c1a4068e7c682668ddf259e3fe54b3b12df4614"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/af9198a06cba80e22e371eb7decf73e3ec803bc9/smedja-linux-arm64.tar.gz"
      sha256 "a9d054e2a2b70269c62dd67a01c9dc8a9befd7529859c73b7dd6a1628a091064"
    end
    on_intel do
      url "https://console.smedja.app/dl/af9198a06cba80e22e371eb7decf73e3ec803bc9/smedja-linux-amd64.tar.gz"
      sha256 "fff2ebf01b598c6d0406e3dc673c92a0897e7b192e394853120d14bc8ee29949"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
