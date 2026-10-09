# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1032"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a15ae15ab60314c81a7e83b02fc37d05c6b3fda2/smedja-darwin-arm64.tar.gz"
      sha256 "160caeaf0a08b0a5e6fbbcae3abc30f5388e54413ff6cf5810845cfbb78cd7b8"
    end
    on_intel do
      url "https://console.smedja.app/dl/a15ae15ab60314c81a7e83b02fc37d05c6b3fda2/smedja-darwin-amd64.tar.gz"
      sha256 "1ed03aa529f643e633a340a216db49482b1817e6c76fb03481b829c47db31c50"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a15ae15ab60314c81a7e83b02fc37d05c6b3fda2/smedja-linux-arm64.tar.gz"
      sha256 "f1afedf441442e19477aea8d074b2f46ce14abc311d4303e3490fd7f84a3bdae"
    end
    on_intel do
      url "https://console.smedja.app/dl/a15ae15ab60314c81a7e83b02fc37d05c6b3fda2/smedja-linux-amd64.tar.gz"
      sha256 "2ab053d93a07f8aab9ffbd4f4b357d3e76f9b883b988515beb31ace050e13a41"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
