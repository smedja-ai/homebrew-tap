# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1545"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/16f709df992f2e06c7f07ea1476b7bf985d7d169/smedja-darwin-arm64.tar.gz"
      sha256 "606fd2b87475ddf6fdf8ae4ccd9d9dadd5969bff892c20d6744ad29d5ad878dd"
    end
    on_intel do
      url "https://console.smedja.app/dl/16f709df992f2e06c7f07ea1476b7bf985d7d169/smedja-darwin-amd64.tar.gz"
      sha256 "902107d70e3e362b98b38f53186fee7bbcd36415bac47cc93abdeb0ff87f28ab"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/16f709df992f2e06c7f07ea1476b7bf985d7d169/smedja-linux-arm64.tar.gz"
      sha256 "bc549423b90e78a8909e5213356ef17899ea58c78b86690a940a46102f1cf7c7"
    end
    on_intel do
      url "https://console.smedja.app/dl/16f709df992f2e06c7f07ea1476b7bf985d7d169/smedja-linux-amd64.tar.gz"
      sha256 "e6c42044e5085dd08f51e63e26a67a42c184c08d5f9f9fa863b9c0da77495752"
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
