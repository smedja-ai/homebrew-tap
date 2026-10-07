# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.993"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6d69355e9d045cd8cbcfdf081185be9366bfc040/smedja-darwin-arm64.tar.gz"
      sha256 "c8a3160c586181d9903f15f4911717fa72c3ec3eb1512546c2ed12d192c6bb1a"
    end
    on_intel do
      url "https://console.smedja.app/dl/6d69355e9d045cd8cbcfdf081185be9366bfc040/smedja-darwin-amd64.tar.gz"
      sha256 "e3312c778330ec6b664ef2e119c29198d2dfa828841e1826567c2191681f7090"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6d69355e9d045cd8cbcfdf081185be9366bfc040/smedja-linux-arm64.tar.gz"
      sha256 "171f83d51d3643e15d0c551c6e35c4870b28f7ed00c027cb2064dddcd4f5e5df"
    end
    on_intel do
      url "https://console.smedja.app/dl/6d69355e9d045cd8cbcfdf081185be9366bfc040/smedja-linux-amd64.tar.gz"
      sha256 "1623cc327d013bb0f7cf69a71774c61772996423b8ad8ec8ed6c34e0993e1847"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
