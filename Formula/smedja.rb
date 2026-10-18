# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1404"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/baac54177fd5d0e1ee1b22225599ccdd6a03bbe7/smedja-darwin-arm64.tar.gz"
      sha256 "d1bd704f514d43bc161208f3a400d624dff84c1ecbdaed8d06e02e6fb3da56e4"
    end
    on_intel do
      url "https://console.smedja.app/dl/baac54177fd5d0e1ee1b22225599ccdd6a03bbe7/smedja-darwin-amd64.tar.gz"
      sha256 "3287b72a606329e872af2404efd080671a2a304b7a701f5a6d43ec6720a2c033"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/baac54177fd5d0e1ee1b22225599ccdd6a03bbe7/smedja-linux-arm64.tar.gz"
      sha256 "78ebce46f58c0f90c0ddbb3bbb5ec9b9ea2e214246eee4f45b28c6efb6ea42b8"
    end
    on_intel do
      url "https://console.smedja.app/dl/baac54177fd5d0e1ee1b22225599ccdd6a03bbe7/smedja-linux-amd64.tar.gz"
      sha256 "c72dfe31a5c4439978e2ecac72cb448ec2e4f8d895ed5683cac25731a5597471"
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
