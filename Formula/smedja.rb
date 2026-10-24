# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1471"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a33f75e7c73615487289d55c5245f76693eeef71/smedja-darwin-arm64.tar.gz"
      sha256 "942774134f85dd5ea9ccd373527a54ec0887809851ee459f8b329be7d8467d88"
    end
    on_intel do
      url "https://console.smedja.app/dl/a33f75e7c73615487289d55c5245f76693eeef71/smedja-darwin-amd64.tar.gz"
      sha256 "de074305c7d9555cefb1ac6b0c285cc4f1c7a156518b17c9bb2e6a5c8783a0b6"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a33f75e7c73615487289d55c5245f76693eeef71/smedja-linux-arm64.tar.gz"
      sha256 "5368b5ba9d60f870780ac677b73a99cdae1395d94812aabbd6ae659322748ca1"
    end
    on_intel do
      url "https://console.smedja.app/dl/a33f75e7c73615487289d55c5245f76693eeef71/smedja-linux-amd64.tar.gz"
      sha256 "9a21c216b7a26ba6c99c684110a6f127f831f6b0707bcd578695a08dac72b88a"
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
