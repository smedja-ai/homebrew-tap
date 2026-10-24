# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1458"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7965f6cd6ab2ef2d1a784fa0cdde815adc0c73a2/smedja-darwin-arm64.tar.gz"
      sha256 "20596e4a0d6d003d66142cea013cf898a4f57734f5cf40f62c1b9c0e1eed505a"
    end
    on_intel do
      url "https://console.smedja.app/dl/7965f6cd6ab2ef2d1a784fa0cdde815adc0c73a2/smedja-darwin-amd64.tar.gz"
      sha256 "f42ff807932586b2167247c38c739875c2336c443c67927a49c249a9794c8dd7"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7965f6cd6ab2ef2d1a784fa0cdde815adc0c73a2/smedja-linux-arm64.tar.gz"
      sha256 "6c727c7239f1a2fe982f5ce618a2a319a35b66e336b535dcdbb1aa7518e7b08b"
    end
    on_intel do
      url "https://console.smedja.app/dl/7965f6cd6ab2ef2d1a784fa0cdde815adc0c73a2/smedja-linux-amd64.tar.gz"
      sha256 "4e9021dffbfeb58db1542755564d0eb1f470ac946546fae2cc49e92d483d4e8d"
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
