# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1289"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/48e393ead13eab85ce8fdd75da2c8540ab8cac66/smedja-darwin-arm64.tar.gz"
      sha256 "b13c9a922d481ffcab72e9916dfb78a5d9c0d41879e2632d405045ca55844292"
    end
    on_intel do
      url "https://console.smedja.app/dl/48e393ead13eab85ce8fdd75da2c8540ab8cac66/smedja-darwin-amd64.tar.gz"
      sha256 "61cd42591f1e7275df96edb640403c949b47a6112c8e8531a7ff6f2b24da62c2"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/48e393ead13eab85ce8fdd75da2c8540ab8cac66/smedja-linux-arm64.tar.gz"
      sha256 "73b1d2ccf9cfaacec2d8cc81f0542b2ef2a17524f651731a9b72517ed7ccd928"
    end
    on_intel do
      url "https://console.smedja.app/dl/48e393ead13eab85ce8fdd75da2c8540ab8cac66/smedja-linux-amd64.tar.gz"
      sha256 "3ea5a1efb9bc37c69ea00861f3295c59e303e61efa7fe06629a5d9e3ae7ad3cd"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
