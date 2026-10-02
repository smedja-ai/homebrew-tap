# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.832"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8ba29de8c077958fb100c1e72ac5ffdc8d1580be/smedja-darwin-arm64.tar.gz"
      sha256 "493d2c16d01dc096eb88b9bb06d09a64ba959f4e8aa1e8fd34c9f3cfac7ddb96"
    end
    on_intel do
      url "https://console.smedja.app/dl/8ba29de8c077958fb100c1e72ac5ffdc8d1580be/smedja-darwin-amd64.tar.gz"
      sha256 "d43e0d6aee76f72f56178fc70a7fcc8c1eb1857ffc9cd6cdae515b82a9d62d4d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8ba29de8c077958fb100c1e72ac5ffdc8d1580be/smedja-linux-arm64.tar.gz"
      sha256 "e21700552e91e856cb35053aeb00bef74c40ae4b432d56d67b9d290366a21828"
    end
    on_intel do
      url "https://console.smedja.app/dl/8ba29de8c077958fb100c1e72ac5ffdc8d1580be/smedja-linux-amd64.tar.gz"
      sha256 "baf1957ce718bebdd5301f078e257bfef4e3f5f9d7028b5d1d62c48a7c4f42cc"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
