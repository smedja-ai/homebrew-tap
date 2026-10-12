# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1180"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c11fdeb3bdf6d9855c339ece15b740e88a842466/smedja-darwin-arm64.tar.gz"
      sha256 "d74317be0dbfb2e96c8c3281c87dbaa5e33d43baf9ed462c47beaea45044772e"
    end
    on_intel do
      url "https://console.smedja.app/dl/c11fdeb3bdf6d9855c339ece15b740e88a842466/smedja-darwin-amd64.tar.gz"
      sha256 "52f1b6430663fad3d6aa02fcf9f54caa5d8ce5ff1bb7277d793b0f6010decfe7"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c11fdeb3bdf6d9855c339ece15b740e88a842466/smedja-linux-arm64.tar.gz"
      sha256 "02ff83d108cd7f64cb6014a5c917ddd001b028c0fca46218e9d153090f2699e1"
    end
    on_intel do
      url "https://console.smedja.app/dl/c11fdeb3bdf6d9855c339ece15b740e88a842466/smedja-linux-amd64.tar.gz"
      sha256 "25ae874bfe8d21de6d127954b6eafa4e6bcc873c97f53c665287d0ad886c6cdc"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
