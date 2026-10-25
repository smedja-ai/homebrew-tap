# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1481"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/e175d79f5dbf1452f98de55c10a700ef544e7a87/smedja-darwin-arm64.tar.gz"
      sha256 "254b700250ad36db1fe7868e0b591f84d77bda89a5514f91167e304af8611ae8"
    end
    on_intel do
      url "https://console.smedja.app/dl/e175d79f5dbf1452f98de55c10a700ef544e7a87/smedja-darwin-amd64.tar.gz"
      sha256 "152ca3f3e54db7f81708451641c0ba85330b4f73e509ec252bf9c88ba9a36bde"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/e175d79f5dbf1452f98de55c10a700ef544e7a87/smedja-linux-arm64.tar.gz"
      sha256 "a4bb6f9f02b59ded5468ec15ae92be1964237fcffd4e1a37859be25ea513e50c"
    end
    on_intel do
      url "https://console.smedja.app/dl/e175d79f5dbf1452f98de55c10a700ef544e7a87/smedja-linux-amd64.tar.gz"
      sha256 "78fa7897a119979766ba15ad18a91d073d88dacc4ca4bc35c70d5092e7b2586a"
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
