# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1061"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7d3ac1c908862a627837fb496b89c624981377ec/smedja-darwin-arm64.tar.gz"
      sha256 "07018716e6ceb64942e4a0df2f1aca97a0ceebbebc0f83152586a6221ae7e43a"
    end
    on_intel do
      url "https://console.smedja.app/dl/7d3ac1c908862a627837fb496b89c624981377ec/smedja-darwin-amd64.tar.gz"
      sha256 "222354fd929b84d241e3ee93deffe20c8ef5eff8211f554a478699edc9c2b838"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7d3ac1c908862a627837fb496b89c624981377ec/smedja-linux-arm64.tar.gz"
      sha256 "efa093f07b6238e759f01eeacfd36f0e459f39f8e787d28216585c5eb3daae3b"
    end
    on_intel do
      url "https://console.smedja.app/dl/7d3ac1c908862a627837fb496b89c624981377ec/smedja-linux-amd64.tar.gz"
      sha256 "dfc4f3b6e9302e4bb38f014c430ec0eb67e5d2e6ee1e558a4a90f2bbf285ff54"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
