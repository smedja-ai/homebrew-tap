# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1416"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b8482fa083a4073abed23a83e9d3dbe734776ac6/smedja-darwin-arm64.tar.gz"
      sha256 "9936b3b9b3028c998b46332cb6f7839628b1cf4dd58c17a4259e69d806fcc041"
    end
    on_intel do
      url "https://console.smedja.app/dl/b8482fa083a4073abed23a83e9d3dbe734776ac6/smedja-darwin-amd64.tar.gz"
      sha256 "86d296cc8c5be593de299343ac8738078ba783c0505b096cf5f9d1f2d6d8c89d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b8482fa083a4073abed23a83e9d3dbe734776ac6/smedja-linux-arm64.tar.gz"
      sha256 "59ed2966ae400ef534de77734253cd261b2de2e1619d8f2da5e44f1ab5e626d9"
    end
    on_intel do
      url "https://console.smedja.app/dl/b8482fa083a4073abed23a83e9d3dbe734776ac6/smedja-linux-amd64.tar.gz"
      sha256 "6f6d62ad4e39b5d3d87dee4739b133756a0f3f06a62bbb9ca80e1bdeb9dc4f5e"
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
