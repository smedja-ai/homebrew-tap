# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.919"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fd154bf830a4aef9f575761c30a338f0dc477865/smedja-darwin-arm64.tar.gz"
      sha256 "486b006af98be9ba51a28f14dad6dd0998d9cf18841164a96da80c4569ffafaf"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd154bf830a4aef9f575761c30a338f0dc477865/smedja-darwin-amd64.tar.gz"
      sha256 "c1b61f9ba81edeb336e2a34c0451bab664d0a3c778c80f35b8a68fdf7b9c3dc3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fd154bf830a4aef9f575761c30a338f0dc477865/smedja-linux-arm64.tar.gz"
      sha256 "6f5826c71f3e8083ad13ffc5cbbbed3b26fab83456ad93221740b908a90dae20"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd154bf830a4aef9f575761c30a338f0dc477865/smedja-linux-amd64.tar.gz"
      sha256 "b2c2e387942d92571eb2b52b6a5865fe8e239acb60ef790d3e6e49e4644c6642"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
