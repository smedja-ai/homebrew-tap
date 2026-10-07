# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.999"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fb1e01196f87cc9812f2597a32f376ff199e00eb/smedja-darwin-arm64.tar.gz"
      sha256 "c4575214d4c99dc1d4ed6764f6b8f433c302e4468ffef9afe3db1fbda79eb64a"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb1e01196f87cc9812f2597a32f376ff199e00eb/smedja-darwin-amd64.tar.gz"
      sha256 "c23b4e1249034f15d3d4400c21109f36543439a5f24634dbec20474c8e0a8827"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fb1e01196f87cc9812f2597a32f376ff199e00eb/smedja-linux-arm64.tar.gz"
      sha256 "6b972c78f3fffd9e8cf3d7c65b37d26820772e43aacc14ad1956f4db11a8916f"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb1e01196f87cc9812f2597a32f376ff199e00eb/smedja-linux-amd64.tar.gz"
      sha256 "6504afc83c676939682e3dda312007240e932b5ebee305387baf59751e3b4047"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
