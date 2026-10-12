# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1163"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b7c227e801b409fa2ff60edbfee411605c6f8e69/smedja-darwin-arm64.tar.gz"
      sha256 "e482cf8b76ae412687b938e20d68231e33ba9a514f3f891210bbc2dcb499fb84"
    end
    on_intel do
      url "https://console.smedja.app/dl/b7c227e801b409fa2ff60edbfee411605c6f8e69/smedja-darwin-amd64.tar.gz"
      sha256 "611800696617892a1f28d120d5438e025991b37565d86ec740671f14e2a7391f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b7c227e801b409fa2ff60edbfee411605c6f8e69/smedja-linux-arm64.tar.gz"
      sha256 "6e27ebeedc29c22d67c785876eeb5dd59d1665348218deef9790608a6fb8af35"
    end
    on_intel do
      url "https://console.smedja.app/dl/b7c227e801b409fa2ff60edbfee411605c6f8e69/smedja-linux-amd64.tar.gz"
      sha256 "ecccdd75a6eeb7de4e53db99f44cda7d57041a9d2bc636e00598273ff609b85a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
