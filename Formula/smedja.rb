# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1165"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fad2557fa21c7e85010462c295c6aa8d8e58d2d9/smedja-darwin-arm64.tar.gz"
      sha256 "02adb94a90c3d05a4a91f23d1829477969930e565a9ea50cb64cd90aab0ea83e"
    end
    on_intel do
      url "https://console.smedja.app/dl/fad2557fa21c7e85010462c295c6aa8d8e58d2d9/smedja-darwin-amd64.tar.gz"
      sha256 "6257a33bb27fdf2820f6d943bb2049c8164e849dd78cc8db3820fb9f7e5b7897"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fad2557fa21c7e85010462c295c6aa8d8e58d2d9/smedja-linux-arm64.tar.gz"
      sha256 "e3d186c5e26f0989410e745d5960e27136d8bd8a2fce4b16472d85da8356e6bc"
    end
    on_intel do
      url "https://console.smedja.app/dl/fad2557fa21c7e85010462c295c6aa8d8e58d2d9/smedja-linux-amd64.tar.gz"
      sha256 "d6194ec55b770d99cfce71541a6bbbb2b4e9304dbbb9ad7ed493e3de9551aa05"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
