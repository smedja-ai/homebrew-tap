# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1524"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/14278f6a5fc83f8d29b71f79317a94e84e03c732/smedja-darwin-arm64.tar.gz"
      sha256 "15e3229dc1bdd2ea898d2b75a663b9aebb06a2a165cd10909bb33a27b955f57b"
    end
    on_intel do
      url "https://console.smedja.app/dl/14278f6a5fc83f8d29b71f79317a94e84e03c732/smedja-darwin-amd64.tar.gz"
      sha256 "7a900691c4e20a4c742fa65f45fef9eb9ef8efd7910c3ceaf0f11a1fdc4031fa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/14278f6a5fc83f8d29b71f79317a94e84e03c732/smedja-linux-arm64.tar.gz"
      sha256 "70e6db996d330c10788ca5fa337283eb178b74383b5fac75b8e1a18fbf96a604"
    end
    on_intel do
      url "https://console.smedja.app/dl/14278f6a5fc83f8d29b71f79317a94e84e03c732/smedja-linux-amd64.tar.gz"
      sha256 "a22287dae06d11701f7bc386b2a7549d545879271eebb93d89ac042f8ecef23f"
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
