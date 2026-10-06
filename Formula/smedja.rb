# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.942"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/042e98a4d42e620a404a783488c97fdd1a7f2f72/smedja-darwin-arm64.tar.gz"
      sha256 "7ee15e54e4958114ff6648a2d4ec2ae9a59950879bf7743c96c131f264019499"
    end
    on_intel do
      url "https://console.smedja.app/dl/042e98a4d42e620a404a783488c97fdd1a7f2f72/smedja-darwin-amd64.tar.gz"
      sha256 "32ac6746805cfad79441c7c256495314297fb71af730634206f4b41371cb23b1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/042e98a4d42e620a404a783488c97fdd1a7f2f72/smedja-linux-arm64.tar.gz"
      sha256 "afe7f4d08cb04463a54f5b7c57f09028b46e2c36b8b2b4adb140b038ed294b2c"
    end
    on_intel do
      url "https://console.smedja.app/dl/042e98a4d42e620a404a783488c97fdd1a7f2f72/smedja-linux-amd64.tar.gz"
      sha256 "428a2129604cbe19eb8f9eb22b34d71c104531ea1b52dd8c8253d12a6a835f3c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
