# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.946"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bcedd7694b00f2abc10c54f9cf55da1ce7e102fd/smedja-darwin-arm64.tar.gz"
      sha256 "8e978e20680742597e061a7841818cd075d3ede0b02be8052f31ee304878f1c8"
    end
    on_intel do
      url "https://console.smedja.app/dl/bcedd7694b00f2abc10c54f9cf55da1ce7e102fd/smedja-darwin-amd64.tar.gz"
      sha256 "0fb86e8191084d7a6079a4f68b827af549856b1b7c334527b43e6923446b15f8"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bcedd7694b00f2abc10c54f9cf55da1ce7e102fd/smedja-linux-arm64.tar.gz"
      sha256 "5d5720b71705dbfa47673ee9453b0a9b6c3fea6cd16b70bc1f522f4ff43e8f64"
    end
    on_intel do
      url "https://console.smedja.app/dl/bcedd7694b00f2abc10c54f9cf55da1ce7e102fd/smedja-linux-amd64.tar.gz"
      sha256 "5aa0f3249339bd7d443ea85c754b12d7396b83bde38e62d09e24089d7898373f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
