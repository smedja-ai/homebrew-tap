# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.977"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6f83c7e8c9d03634d3efa925e547b6ead8cbb3ac/smedja-darwin-arm64.tar.gz"
      sha256 "dd3f9647f0be2574b5b7ecb25135df0d2c4bbb297060e934862bf15f4ccb55d9"
    end
    on_intel do
      url "https://console.smedja.app/dl/6f83c7e8c9d03634d3efa925e547b6ead8cbb3ac/smedja-darwin-amd64.tar.gz"
      sha256 "e23b0e7d218ed368a0c044a23835a943435417040e54425dc8f227507b379dc3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6f83c7e8c9d03634d3efa925e547b6ead8cbb3ac/smedja-linux-arm64.tar.gz"
      sha256 "44027949d9aa965030dec780513101a1a51ababd1dae72cf911767ee35a08837"
    end
    on_intel do
      url "https://console.smedja.app/dl/6f83c7e8c9d03634d3efa925e547b6ead8cbb3ac/smedja-linux-amd64.tar.gz"
      sha256 "4add1af6c28162ca78667180f89dc937bc69de0ab62934b02b08af442714d75a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
