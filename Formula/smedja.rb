# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1238"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c49ac769b4857aeda13e16aa78861c064372397b/smedja-darwin-arm64.tar.gz"
      sha256 "9767b3cd397d7457db73ca26ec05b78fdd82256ae2dc71cad58bdb39a6a2f70a"
    end
    on_intel do
      url "https://console.smedja.app/dl/c49ac769b4857aeda13e16aa78861c064372397b/smedja-darwin-amd64.tar.gz"
      sha256 "690b977f889eff8d6779daf5fec6b542f3aa08d8bc46457b0c3c3546683049d4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c49ac769b4857aeda13e16aa78861c064372397b/smedja-linux-arm64.tar.gz"
      sha256 "03ce6d013031dc19b92e1b3a268392ae490f484164e46e405293c51883100eba"
    end
    on_intel do
      url "https://console.smedja.app/dl/c49ac769b4857aeda13e16aa78861c064372397b/smedja-linux-amd64.tar.gz"
      sha256 "4e56164a2d550f58c6c5da95100a2c8b39fa81fd9f2ac03725a3bd81488ea7a4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
