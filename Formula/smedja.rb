# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1412"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bcaaeacf865615d1c1fd0ff53cb566e690441273/smedja-darwin-arm64.tar.gz"
      sha256 "36fd578531488f9c36d258c01592b1f539ad94c57afa0f498ee84140166c7f92"
    end
    on_intel do
      url "https://console.smedja.app/dl/bcaaeacf865615d1c1fd0ff53cb566e690441273/smedja-darwin-amd64.tar.gz"
      sha256 "06c1175b811aa2c58a1fa5268c830b09799235d29c7c97ba4f6317706de25ec9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bcaaeacf865615d1c1fd0ff53cb566e690441273/smedja-linux-arm64.tar.gz"
      sha256 "547a5dd69de1e6be2c01a0c01e6b9ea1725af59e742b122151c9edb8196dcdbe"
    end
    on_intel do
      url "https://console.smedja.app/dl/bcaaeacf865615d1c1fd0ff53cb566e690441273/smedja-linux-amd64.tar.gz"
      sha256 "b4b20074b2bef0b2e34e401ac458236b2aabe4b3d0d8048d7c9e3805f52339a8"
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
