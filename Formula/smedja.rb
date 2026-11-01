# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1565"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/17a4b32d6a76877a0c231568a888d91f40e614ad/smedja-darwin-arm64.tar.gz"
      sha256 "a1c49a0625309f6282be8dde1a6824420abb83f59ce62ee732fe98c88d8960ba"
    end
    on_intel do
      url "https://console.smedja.app/dl/17a4b32d6a76877a0c231568a888d91f40e614ad/smedja-darwin-amd64.tar.gz"
      sha256 "02c1f7f012f770c4bef8299d883f7bfd6e62110aa18812f2018a936f1477cd0b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/17a4b32d6a76877a0c231568a888d91f40e614ad/smedja-linux-arm64.tar.gz"
      sha256 "5f7e54a2fc6b3e2c71c666bbdb81fec02471af1fcb28162539bc0878697605a6"
    end
    on_intel do
      url "https://console.smedja.app/dl/17a4b32d6a76877a0c231568a888d91f40e614ad/smedja-linux-amd64.tar.gz"
      sha256 "167cf0e95614c84b880f4c26757b91c63fa239b2ef4645c76c13660aa7e457fd"
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
