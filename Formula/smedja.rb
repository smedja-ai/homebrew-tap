# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1381"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d3c4c385f8f648b3395a0e722c508e666dd83946/smedja-darwin-arm64.tar.gz"
      sha256 "960c4734bb0fcf4c719f6699b469bf7e2f6ba5a8159332289c9067908f490441"
    end
    on_intel do
      url "https://console.smedja.app/dl/d3c4c385f8f648b3395a0e722c508e666dd83946/smedja-darwin-amd64.tar.gz"
      sha256 "2b7d2970e2987c90ed1d68fdfea3b1c92f3aa0ae50b2ff45b30dc9deb6b06458"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d3c4c385f8f648b3395a0e722c508e666dd83946/smedja-linux-arm64.tar.gz"
      sha256 "d484dbf8fcdf6761f4b1046afc1cc96a8dd18c1cb2ff538e11d9b334d73aff85"
    end
    on_intel do
      url "https://console.smedja.app/dl/d3c4c385f8f648b3395a0e722c508e666dd83946/smedja-linux-amd64.tar.gz"
      sha256 "fb4129e12a73b9ae500dd949ce59a96d9ddd0b265b5e99a267470b104d947f31"
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
