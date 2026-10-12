# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1143"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/60738eb148c40ee58c0b17e9cdcd8c99f1a6bc1c/smedja-darwin-arm64.tar.gz"
      sha256 "8a30851b1afd8c5b5feafe32bf1ef94c6216560b18f4bb2f983b9a60906d702a"
    end
    on_intel do
      url "https://console.smedja.app/dl/60738eb148c40ee58c0b17e9cdcd8c99f1a6bc1c/smedja-darwin-amd64.tar.gz"
      sha256 "e1cfb1306431ee4340c52345aa3db240a64bb76f098801cd72ca8fdf4737ab8e"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/60738eb148c40ee58c0b17e9cdcd8c99f1a6bc1c/smedja-linux-arm64.tar.gz"
      sha256 "c19c1444d9c275787833ca164061a375a4ad5db94fa9c8f22e2c1aef6c6407ce"
    end
    on_intel do
      url "https://console.smedja.app/dl/60738eb148c40ee58c0b17e9cdcd8c99f1a6bc1c/smedja-linux-amd64.tar.gz"
      sha256 "5a17602d70832f7ffcc8e8619969a01605936390c5d9bd7a212bb29d231a4ed0"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
