# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1395"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8c1cae20fc5bd5c61a4c329f54d627b39371515c/smedja-darwin-arm64.tar.gz"
      sha256 "4ac94a7e9cceed08f3cfdc21b86543f1f8fa3a73ebb6e100d2892e67bd3eb959"
    end
    on_intel do
      url "https://console.smedja.app/dl/8c1cae20fc5bd5c61a4c329f54d627b39371515c/smedja-darwin-amd64.tar.gz"
      sha256 "9c79bcfa3113c7121bddf752cc9d0147418d6a03211839ca639222da58b5f295"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8c1cae20fc5bd5c61a4c329f54d627b39371515c/smedja-linux-arm64.tar.gz"
      sha256 "a77be8d6321328e2980ed16a23805b4dca77c54fc943a8b01f89327233dd5611"
    end
    on_intel do
      url "https://console.smedja.app/dl/8c1cae20fc5bd5c61a4c329f54d627b39371515c/smedja-linux-amd64.tar.gz"
      sha256 "ee5ba4f72c35af00803a441974645f8a55b687a77f4bc96aa93a9be579f833ab"
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
