# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1013"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ab2c3c8556de958a59eb8965a095ff79a4a2d9aa/smedja-darwin-arm64.tar.gz"
      sha256 "791339e9f2065a4da15bc397afd9faaec06e12b49bfe3f21d892bcf2fcdaa500"
    end
    on_intel do
      url "https://console.smedja.app/dl/ab2c3c8556de958a59eb8965a095ff79a4a2d9aa/smedja-darwin-amd64.tar.gz"
      sha256 "97cbbf47e6a0e0881abdf7461a41428353527afce3bf4d6edde0bbe0477fffae"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ab2c3c8556de958a59eb8965a095ff79a4a2d9aa/smedja-linux-arm64.tar.gz"
      sha256 "4e72445e16c132a8445c0ac77b38dcb0eaa0e942101d520d517f3a3cb404127d"
    end
    on_intel do
      url "https://console.smedja.app/dl/ab2c3c8556de958a59eb8965a095ff79a4a2d9aa/smedja-linux-amd64.tar.gz"
      sha256 "3322f6e82bde1793e299b895a423b3a189dab815f333074f90745baa53a68e9c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
