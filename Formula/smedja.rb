# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.894"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/814d89600ff22ea80626922a8e58964a0afd431c/smedja-darwin-arm64.tar.gz"
      sha256 "24900021aedcfcc790be15e4d87662a031fbe0eecfde3366567bcc4432cbcdc1"
    end
    on_intel do
      url "https://console.smedja.app/dl/814d89600ff22ea80626922a8e58964a0afd431c/smedja-darwin-amd64.tar.gz"
      sha256 "df69532979b16b953879146301d7be3a7ccc2ed45391bef4344c49b1deffdff9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/814d89600ff22ea80626922a8e58964a0afd431c/smedja-linux-arm64.tar.gz"
      sha256 "46293f24d7f0c6bde6c9e8ddbb08a0c2b4b2aa96dd5c27a1ee83b64affa68e5e"
    end
    on_intel do
      url "https://console.smedja.app/dl/814d89600ff22ea80626922a8e58964a0afd431c/smedja-linux-amd64.tar.gz"
      sha256 "e40241d6ed169c2e69d44eac9fea3c1f28b250755a156817ce5e638ef11400b7"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
