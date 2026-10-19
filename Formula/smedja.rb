# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1421"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/849d6a989d96db674fe7ab820c3dbf88c7463c6b/smedja-darwin-arm64.tar.gz"
      sha256 "cbf5b043c318584299f8c92fc0e45968e972a44d6133f05f110d82ce76a8d615"
    end
    on_intel do
      url "https://console.smedja.app/dl/849d6a989d96db674fe7ab820c3dbf88c7463c6b/smedja-darwin-amd64.tar.gz"
      sha256 "b02ea0afac934d1fd2272fc4809e181fd0987506bfd92f7205caf4af069f4800"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/849d6a989d96db674fe7ab820c3dbf88c7463c6b/smedja-linux-arm64.tar.gz"
      sha256 "a27b421fe0f3559fc02cf5f85e0101255293ac43eeb2521a50ff6ecf9a5a8067"
    end
    on_intel do
      url "https://console.smedja.app/dl/849d6a989d96db674fe7ab820c3dbf88c7463c6b/smedja-linux-amd64.tar.gz"
      sha256 "497d7990e9594942369d636192b103aa5344d975b25ccacc9efabef5d596ea26"
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
