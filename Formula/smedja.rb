# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1250"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8c0c419cc4ac8300532344fe2557f1c21fd03240/smedja-darwin-arm64.tar.gz"
      sha256 "1c8a126fd751383257612692c24ed934979cd62bab10ad4a0a53fd64e7607663"
    end
    on_intel do
      url "https://console.smedja.app/dl/8c0c419cc4ac8300532344fe2557f1c21fd03240/smedja-darwin-amd64.tar.gz"
      sha256 "31a67589a02fdafa5f366d4395c16c33d0fe4eda7185e74e6efbaa22bcc4bd29"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8c0c419cc4ac8300532344fe2557f1c21fd03240/smedja-linux-arm64.tar.gz"
      sha256 "b3210de59fd7057c69f7b3a2f29ac00359beb2099cde7a7a6dd29df1ccc02191"
    end
    on_intel do
      url "https://console.smedja.app/dl/8c0c419cc4ac8300532344fe2557f1c21fd03240/smedja-linux-amd64.tar.gz"
      sha256 "a49fcddba4f3f0040a1f009babfac63c6c6c400ed66a69c100241b7179973c11"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
