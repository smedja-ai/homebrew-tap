# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1577"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/085a41c4c1781ab16ad1a5254179e16b9c20591a/smedja-darwin-arm64.tar.gz"
      sha256 "79d84a3e3284678b64aa79bab74d4aed5b88ccd160e1c67814bed25093a6bcb4"
    end
    on_intel do
      url "https://console.smedja.app/dl/085a41c4c1781ab16ad1a5254179e16b9c20591a/smedja-darwin-amd64.tar.gz"
      sha256 "e1b1aa29202c2e643c603239e662c96944693d1a25f19174bb933a57b27dc193"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/085a41c4c1781ab16ad1a5254179e16b9c20591a/smedja-linux-arm64.tar.gz"
      sha256 "9b4b775f6fb3ba7fd067ba7830922b28a5fd5d993c1fc6f544fb05fb0fcfc7aa"
    end
    on_intel do
      url "https://console.smedja.app/dl/085a41c4c1781ab16ad1a5254179e16b9c20591a/smedja-linux-amd64.tar.gz"
      sha256 "1d274ece32f36ff37ad4facd547906eb4b26a2e7ae3839c7ccccbd4eca7f8013"
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
