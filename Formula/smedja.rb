# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1399"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/f961631a3ee2d1c0b8ed15382f10724e440fe99f/smedja-darwin-arm64.tar.gz"
      sha256 "bd938803400a2ba412de84dd54b8b61efc571ec8e398359f841d56b010896e49"
    end
    on_intel do
      url "https://console.smedja.app/dl/f961631a3ee2d1c0b8ed15382f10724e440fe99f/smedja-darwin-amd64.tar.gz"
      sha256 "c932ced227bc64267b541c49c57ab7ebd30cc2091025eb6313144bf26c31691c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/f961631a3ee2d1c0b8ed15382f10724e440fe99f/smedja-linux-arm64.tar.gz"
      sha256 "69e39147211ffccd1ca37216ac6754fe3050cacaa2764395db6d182abffaf225"
    end
    on_intel do
      url "https://console.smedja.app/dl/f961631a3ee2d1c0b8ed15382f10724e440fe99f/smedja-linux-amd64.tar.gz"
      sha256 "d57b0314c7612d8f0ebd221eb12176d6935be98b08d3c1ead122422381f7c93c"
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
