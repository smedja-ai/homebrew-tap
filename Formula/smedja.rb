# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.878"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/14b681c2011af29059a07cdf18f3598254bd5d98/smedja-darwin-arm64.tar.gz"
      sha256 "aec97d51b58bc29cb5bdb035d9c1a32bc509370298a5ce5542937c16498d4d02"
    end
    on_intel do
      url "https://console.smedja.app/dl/14b681c2011af29059a07cdf18f3598254bd5d98/smedja-darwin-amd64.tar.gz"
      sha256 "4d76a4dc7fcd720cd5433a71ebcddd0227b1a5d3adc3c54d89a29339aa095751"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/14b681c2011af29059a07cdf18f3598254bd5d98/smedja-linux-arm64.tar.gz"
      sha256 "fa4e5ee0cd41d3bbe41ba1d14a3e698facbb42893895e5fd3a1986ae2a4b2f12"
    end
    on_intel do
      url "https://console.smedja.app/dl/14b681c2011af29059a07cdf18f3598254bd5d98/smedja-linux-amd64.tar.gz"
      sha256 "8883258adf6600165ef2c321a2f22fed28cb5eb0f38c35f96900d517fe7a347e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
