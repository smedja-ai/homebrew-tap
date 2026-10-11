# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1119"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ad54bea5fab54de16525fcd26e1f81e0336b0688/smedja-darwin-arm64.tar.gz"
      sha256 "1cfe1d36c90d9219bdfb05c4f72e4f7abb89f8a1b4ea6d90ac7940bc1c5ac90c"
    end
    on_intel do
      url "https://console.smedja.app/dl/ad54bea5fab54de16525fcd26e1f81e0336b0688/smedja-darwin-amd64.tar.gz"
      sha256 "724a3b26185a270f6800b09531e569af0ca5b7ee8fdd13a483d7e6fe7ca8a69c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ad54bea5fab54de16525fcd26e1f81e0336b0688/smedja-linux-arm64.tar.gz"
      sha256 "4ff1d63c4a41100a682bb951965d1a9a53a4ea034223e1a700e1c9f0fa6cf758"
    end
    on_intel do
      url "https://console.smedja.app/dl/ad54bea5fab54de16525fcd26e1f81e0336b0688/smedja-linux-amd64.tar.gz"
      sha256 "4220858e73b4d247ba7ae196b0bf5c609fc14f0e21e645e5bdeb202bf0338869"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
