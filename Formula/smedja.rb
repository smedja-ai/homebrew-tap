# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.930"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/67a8c2a3cdefea65ec84c4356438a22fa8cd6edf/smedja-darwin-arm64.tar.gz"
      sha256 "acb81c5f1a694307812173137124baba2d0e13f5a41b7b25f3398bea0bb10de2"
    end
    on_intel do
      url "https://console.smedja.app/dl/67a8c2a3cdefea65ec84c4356438a22fa8cd6edf/smedja-darwin-amd64.tar.gz"
      sha256 "c2a2516c561dea4b65fd84fca21bea20b7c3acf0e00e1728746f4e36c3e1829f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/67a8c2a3cdefea65ec84c4356438a22fa8cd6edf/smedja-linux-arm64.tar.gz"
      sha256 "eec52a29fef3d2495a55b9814a41c15878061a8436e8bd7ed4be13096a179a68"
    end
    on_intel do
      url "https://console.smedja.app/dl/67a8c2a3cdefea65ec84c4356438a22fa8cd6edf/smedja-linux-amd64.tar.gz"
      sha256 "e9df0f5fa34ff8c8b66703589097b9f14e8f88d165d2aedd6a0d8eb48d6e71b3"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
