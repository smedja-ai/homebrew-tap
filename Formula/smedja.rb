# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1311"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/427a2c2a4f9f16cf64dd66655c3beaa2c7544290/smedja-darwin-arm64.tar.gz"
      sha256 "c632f17260e4605f68bbebd4fba5c64b0b3f3ae6f4af1307f75790209e5910de"
    end
    on_intel do
      url "https://console.smedja.app/dl/427a2c2a4f9f16cf64dd66655c3beaa2c7544290/smedja-darwin-amd64.tar.gz"
      sha256 "b3b6bab01537f4ce7dc6e5e8ad069328b574c8bd3548affc6bf7b8adb2db52fe"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/427a2c2a4f9f16cf64dd66655c3beaa2c7544290/smedja-linux-arm64.tar.gz"
      sha256 "ecdaf86a2ad215b530465af48c6c435137e44155f3abe8039034c83c8efb643b"
    end
    on_intel do
      url "https://console.smedja.app/dl/427a2c2a4f9f16cf64dd66655c3beaa2c7544290/smedja-linux-amd64.tar.gz"
      sha256 "1b43b00c977ea43b82926404e92b136b173de1117be1cc0211342d2953919987"
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
