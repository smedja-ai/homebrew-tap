# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1552"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/88041545b6f9905a1cea60829af9274d669103fd/smedja-darwin-arm64.tar.gz"
      sha256 "24db11eea160b63841716aa6a3ee09b31d9c84f05195b0801f4fdb507c11378f"
    end
    on_intel do
      url "https://console.smedja.app/dl/88041545b6f9905a1cea60829af9274d669103fd/smedja-darwin-amd64.tar.gz"
      sha256 "5cf7717d7a53c7acf468f09be1b1f3dd98908d73a7c965b50d4d0589e743227b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/88041545b6f9905a1cea60829af9274d669103fd/smedja-linux-arm64.tar.gz"
      sha256 "1c47e7cbec906affc926eac8701baa2ce23c65daf3e9089ae15f8dbdb416ada5"
    end
    on_intel do
      url "https://console.smedja.app/dl/88041545b6f9905a1cea60829af9274d669103fd/smedja-linux-amd64.tar.gz"
      sha256 "794255a076acc5fd7a35e88229ab829621f85885125a0db5146d7e76ec21097d"
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
