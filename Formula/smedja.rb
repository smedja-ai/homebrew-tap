# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.852"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/59cbfd6b32b056125c457c49ab1e126af93a1cf5/smedja-darwin-arm64.tar.gz"
      sha256 "9eac0439eab5d225f0a8cbd2353ff7040d207742ab62cdd61e92ddd593ed542b"
    end
    on_intel do
      url "https://console.smedja.app/dl/59cbfd6b32b056125c457c49ab1e126af93a1cf5/smedja-darwin-amd64.tar.gz"
      sha256 "ceb05dc67f5bcc2dc86df29185ae8410ee20a6e6e830187078d83c9c0e34f3b8"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/59cbfd6b32b056125c457c49ab1e126af93a1cf5/smedja-linux-arm64.tar.gz"
      sha256 "c078a58032b453065b912d0650599896e2b4fed0d2eb600abac6f495cbb95785"
    end
    on_intel do
      url "https://console.smedja.app/dl/59cbfd6b32b056125c457c49ab1e126af93a1cf5/smedja-linux-amd64.tar.gz"
      sha256 "023b71999d94003764950dbec4778ceabf60a684f99e39680073ae14a2b3a5d4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
