# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1070"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/879377cebc8294ac9490d806c40c31de32523908/smedja-darwin-arm64.tar.gz"
      sha256 "ce2b624c26b9dd885ca900a64cccf864ed87c884926569fef8177ab60875f0df"
    end
    on_intel do
      url "https://console.smedja.app/dl/879377cebc8294ac9490d806c40c31de32523908/smedja-darwin-amd64.tar.gz"
      sha256 "aa056bd7f18e59f3ce85afa3ff889e58ccc0c0a57cda54ac9d513adfdfc69794"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/879377cebc8294ac9490d806c40c31de32523908/smedja-linux-arm64.tar.gz"
      sha256 "fbde2f6b60755a0c23b6014def186efebaaa5b120975f989825db2d9f2002f38"
    end
    on_intel do
      url "https://console.smedja.app/dl/879377cebc8294ac9490d806c40c31de32523908/smedja-linux-amd64.tar.gz"
      sha256 "97cbe728f02e1cb61d317bd53b5d7aa8857d5ee82b38c5a0fe00ad975956ebd4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
