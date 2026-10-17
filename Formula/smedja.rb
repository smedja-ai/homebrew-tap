# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1320"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fb4e235b51785a11e3182339ed1aafc5669093c7/smedja-darwin-arm64.tar.gz"
      sha256 "0bfb7e0fd2c1b683fc1d6c1ba400ae9359a0cdf7b432fec2c176b91e4dfc5a01"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb4e235b51785a11e3182339ed1aafc5669093c7/smedja-darwin-amd64.tar.gz"
      sha256 "ac5d5b5b8a951633425ec93145be7fcbd4d6d87a56146fef1dee63bcc239b899"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fb4e235b51785a11e3182339ed1aafc5669093c7/smedja-linux-arm64.tar.gz"
      sha256 "59773f0e76ee0c4e865822ef6482eb1d39a470e591f2e773aa04986a53d99805"
    end
    on_intel do
      url "https://console.smedja.app/dl/fb4e235b51785a11e3182339ed1aafc5669093c7/smedja-linux-amd64.tar.gz"
      sha256 "2def6d1ca7293b6e8bb04faf791bc944f61c472d161356eaf5652d99c5b1f04b"
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
