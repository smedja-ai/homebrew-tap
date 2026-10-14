# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1273"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/de4134d579b09fd6301d0bed5ddf2902ad111679/smedja-darwin-arm64.tar.gz"
      sha256 "9f0c20c3a64b4a03dbcea8086e262b1d5ac0280202b0d7faa4b2904d7a9abacf"
    end
    on_intel do
      url "https://console.smedja.app/dl/de4134d579b09fd6301d0bed5ddf2902ad111679/smedja-darwin-amd64.tar.gz"
      sha256 "2d0bb5b977bad5bc9780b567f169298c236a81bc83841957f72e9654c738cabe"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/de4134d579b09fd6301d0bed5ddf2902ad111679/smedja-linux-arm64.tar.gz"
      sha256 "fe91ac1452d6cf29df39c537467ab9d49bf1c81759230535f9fbd8068c2ed10e"
    end
    on_intel do
      url "https://console.smedja.app/dl/de4134d579b09fd6301d0bed5ddf2902ad111679/smedja-linux-amd64.tar.gz"
      sha256 "01e54b48e72d5704c8f279e04695c7e0d520b9f81e6bd9885fad0649b3dc84c5"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
