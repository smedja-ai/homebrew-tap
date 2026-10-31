# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1548"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c3f74fb54f39e73b8dcde19fc1438740492dc513/smedja-darwin-arm64.tar.gz"
      sha256 "0f88b106e8d6b9296dfacbbf47f6781b59ec4d14dc0dcb9389a6c5f4e3c37bd2"
    end
    on_intel do
      url "https://console.smedja.app/dl/c3f74fb54f39e73b8dcde19fc1438740492dc513/smedja-darwin-amd64.tar.gz"
      sha256 "f96d13c5f6b28d37e8b5f106e0ca8788d081a728588dfa9007f3e1f9a9392054"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c3f74fb54f39e73b8dcde19fc1438740492dc513/smedja-linux-arm64.tar.gz"
      sha256 "5fd53cb6cc47bab9dfaaf72c1784f64ab8fc74e993a03637706775b7908cbd2c"
    end
    on_intel do
      url "https://console.smedja.app/dl/c3f74fb54f39e73b8dcde19fc1438740492dc513/smedja-linux-amd64.tar.gz"
      sha256 "9b02fb477d6e7aef31c2b677e7668d9748e9096701729640201741674c21a573"
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
