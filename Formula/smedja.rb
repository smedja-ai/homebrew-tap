# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1059"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/acc5f4ed007a9c77e79326132cea2cc50ef6beb6/smedja-darwin-arm64.tar.gz"
      sha256 "81e5ca4ba0563af86899905b14c335be7059be4fb85e1677ca99568b49a42b5c"
    end
    on_intel do
      url "https://console.smedja.app/dl/acc5f4ed007a9c77e79326132cea2cc50ef6beb6/smedja-darwin-amd64.tar.gz"
      sha256 "6ea222803d1f3dcf0a5c0b681925c0123ada8beaba3f0833fdeab5640358d911"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/acc5f4ed007a9c77e79326132cea2cc50ef6beb6/smedja-linux-arm64.tar.gz"
      sha256 "fb1295b70821d2bd3ca360e138cece49a2d72494c13a02e4fc2f707c6a4d8961"
    end
    on_intel do
      url "https://console.smedja.app/dl/acc5f4ed007a9c77e79326132cea2cc50ef6beb6/smedja-linux-amd64.tar.gz"
      sha256 "be41151c7e21140517fc05f565933d94b1ca174e12b79ce989f378428857891c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
