# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1251"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/88ec1b81223b4137505d900b882f7aded4e6d612/smedja-darwin-arm64.tar.gz"
      sha256 "77889feb8d623892c849d1f00b7147efa0f092c89b114f6a05d133e698d5ad3a"
    end
    on_intel do
      url "https://console.smedja.app/dl/88ec1b81223b4137505d900b882f7aded4e6d612/smedja-darwin-amd64.tar.gz"
      sha256 "d0a70e3b1438ba9bebf4eb8e29fe3e2d50e9508eef538ff867213b4e138f2b58"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/88ec1b81223b4137505d900b882f7aded4e6d612/smedja-linux-arm64.tar.gz"
      sha256 "17097da9f0568f2a38d3ebadc5f04ad39afa7d834398ab3164769c33738adfff"
    end
    on_intel do
      url "https://console.smedja.app/dl/88ec1b81223b4137505d900b882f7aded4e6d612/smedja-linux-amd64.tar.gz"
      sha256 "c5f66bf73fe9f31bfd369405ec24c3adaad9f42586b388de89fdab77b0885907"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
