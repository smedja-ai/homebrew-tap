# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1447"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/150ed83418955523bd242f0b0215d9be8d793801/smedja-darwin-arm64.tar.gz"
      sha256 "b0d5a1b88dad9e292508dc808ffc663c643b177d9a2cf89d76239fd2ef3e8fcf"
    end
    on_intel do
      url "https://console.smedja.app/dl/150ed83418955523bd242f0b0215d9be8d793801/smedja-darwin-amd64.tar.gz"
      sha256 "c302cdf2935b08b8b640fbe860477a25a10be3a8eb37537d0d1b135090f6a3b5"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/150ed83418955523bd242f0b0215d9be8d793801/smedja-linux-arm64.tar.gz"
      sha256 "d6b3fbe33f6b0834cc1d3c17d33745b4923f8e1caf970d9890a7f981920e2234"
    end
    on_intel do
      url "https://console.smedja.app/dl/150ed83418955523bd242f0b0215d9be8d793801/smedja-linux-amd64.tar.gz"
      sha256 "32f17936864ce80a81c311b380f7126eb7ab97971ddc2bd911e43d993811665f"
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
