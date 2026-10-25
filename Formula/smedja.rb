# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1515"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fb382d4fd700fb4058d4db2a734d3cee2f90626e/smedja-darwin-arm64.tar.gz"
      sha256 "ce5b9fd9891a1ca473b14b1e4944b798e08a8899cac2d5fed2b9facc78d46dbc"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb382d4fd700fb4058d4db2a734d3cee2f90626e/smedja-darwin-amd64.tar.gz"
      sha256 "4502becd111980203619c6a1c9bc4cb98986ca38f184471f94095f5318b53d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fb382d4fd700fb4058d4db2a734d3cee2f90626e/smedja-linux-arm64.tar.gz"
      sha256 "477a81efe3259566a95fb97762a03a09dad3bc9acb7d38218f267d437938d75c"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb382d4fd700fb4058d4db2a734d3cee2f90626e/smedja-linux-amd64.tar.gz"
      sha256 "c4046c077a09d30d6db35e1863a8f41d224c5347f70e11907e0f71c4544a9606"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
