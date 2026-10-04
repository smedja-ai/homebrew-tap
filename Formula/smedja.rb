# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.903"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9a0faf36719e32e5a6f0b0ee1c2c53a0c153808d/smedja-darwin-arm64.tar.gz"
      sha256 "5f11d80485397b4aa573296f56d9354e80097853da27370abb56ac4fb6b0413d"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a0faf36719e32e5a6f0b0ee1c2c53a0c153808d/smedja-darwin-amd64.tar.gz"
      sha256 "cdf1480a54c1b43d9e22d1cf0eef75e9b05e6850624ac0b6ecd236c3fceb8afa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9a0faf36719e32e5a6f0b0ee1c2c53a0c153808d/smedja-linux-arm64.tar.gz"
      sha256 "e067b3a03ab043e640a8b6786a83b4966aadf64b0a63436c2491ecdce635ba23"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a0faf36719e32e5a6f0b0ee1c2c53a0c153808d/smedja-linux-amd64.tar.gz"
      sha256 "8cdb8a234604dfae602d11de3975a47ce8331be3792a7fafd9ae50ffd7ad9141"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
