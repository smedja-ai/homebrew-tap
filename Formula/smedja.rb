# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.810"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/98b2f914305c83aa46a25a93505265ac02e677c9/smedja-darwin-arm64.tar.gz"
      sha256 "45d7bd68ea8b3a7f8a91f9f7965cfa6591a1bbc6d3cb9c0196b0f3e80f650307"
    end
    on_intel do
      url "https://console.smedja.app/dl/98b2f914305c83aa46a25a93505265ac02e677c9/smedja-darwin-amd64.tar.gz"
      sha256 "13aa877303eff5906af9f217b30c3fb6f5fc665a3167468ce8bbe9985fc88353"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/98b2f914305c83aa46a25a93505265ac02e677c9/smedja-linux-arm64.tar.gz"
      sha256 "ab7d16f70db1fa3e5d8f45fc5086c579e83d034dfec51e7e98aeef880262f80d"
    end
    on_intel do
      url "https://console.smedja.app/dl/98b2f914305c83aa46a25a93505265ac02e677c9/smedja-linux-amd64.tar.gz"
      sha256 "40df7bdfb59b87bc74ada7bec1716ffd2178b2f7c0d307f524bf0d05cfc3b34f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
