# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1539"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d5f561170843a25dbded7cefa2cb101efd4b1f97/smedja-darwin-arm64.tar.gz"
      sha256 "461a02ff0281787d8416d6b0dbf06552a8ad1a1e4a111f8e45e0d78ee378e0d6"
    end
    on_intel do
      url "https://console.smedja.app/dl/d5f561170843a25dbded7cefa2cb101efd4b1f97/smedja-darwin-amd64.tar.gz"
      sha256 "6f2737d548285b5d8510cfb63d1bd8d46908c944dc8a1813e77e26d20c519bd6"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d5f561170843a25dbded7cefa2cb101efd4b1f97/smedja-linux-arm64.tar.gz"
      sha256 "71de6321419b088e2203850d9aa3c8bf4b18f959be053e38f98be8759ac020a0"
    end
    on_intel do
      url "https://console.smedja.app/dl/d5f561170843a25dbded7cefa2cb101efd4b1f97/smedja-linux-amd64.tar.gz"
      sha256 "732c18262e2c0e709e2c3bf0d406fdc6bd7ff94c58b5d4111669316e777f4e9d"
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
