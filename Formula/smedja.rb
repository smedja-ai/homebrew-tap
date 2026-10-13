# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1252"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b75159bdbeee989c35ca9557cbf3d03814a0a9f5/smedja-darwin-arm64.tar.gz"
      sha256 "261e83d843ec1e8dbfa678b4d0011480f6ed90d51a5db477fd9bfd92d187dc25"
    end
    on_intel do
      url "https://console.smedja.app/dl/b75159bdbeee989c35ca9557cbf3d03814a0a9f5/smedja-darwin-amd64.tar.gz"
      sha256 "d5bb42a3152d617d2a1db8c2c6857b40197ba59125762263249682df5554e4c1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b75159bdbeee989c35ca9557cbf3d03814a0a9f5/smedja-linux-arm64.tar.gz"
      sha256 "851866c735bb21570b74e1afc917690a8b7f47a01468c4e50bf64bbed3c6bb27"
    end
    on_intel do
      url "https://console.smedja.app/dl/b75159bdbeee989c35ca9557cbf3d03814a0a9f5/smedja-linux-amd64.tar.gz"
      sha256 "831dccee58257d7b272d77809c07a5acdc94bcfd2656713e717d3413b334f42a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
