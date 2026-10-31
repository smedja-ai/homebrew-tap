# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1549"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/cd39fa1f4be60ec4ebf309adfe0d8c77dc5b84c1/smedja-darwin-arm64.tar.gz"
      sha256 "d4c0867fe111405d948905b4038274ab998cebcb7189bcae53cc241f5b8f6e9e"
    end
    on_intel do
      url "https://console.smedja.app/dl/cd39fa1f4be60ec4ebf309adfe0d8c77dc5b84c1/smedja-darwin-amd64.tar.gz"
      sha256 "889e4d8c151965383e70fafded91856c4c9f2040b42bdf8bf5989a8664ad1676"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/cd39fa1f4be60ec4ebf309adfe0d8c77dc5b84c1/smedja-linux-arm64.tar.gz"
      sha256 "018387e84f82b0ea7531abab8bf0448bbad2fd2e4b7c94e09cab1ab1ab2eafe7"
    end
    on_intel do
      url "https://console.smedja.app/dl/cd39fa1f4be60ec4ebf309adfe0d8c77dc5b84c1/smedja-linux-amd64.tar.gz"
      sha256 "74a86e7c736d8d2cd92b1bfa7572239bb39d4083c686347c73e268c7c285c0fa"
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
