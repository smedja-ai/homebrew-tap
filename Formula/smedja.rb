# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1038"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7d06f9d35f689cade618b8c44c37bd835b7c464a/smedja-darwin-arm64.tar.gz"
      sha256 "8b03a8b6429a5e668e72b9ef0c3fdd1db9669e3849a1d3d5817eb1653c9f67ec"
    end
    on_intel do
      url "https://console.smedja.app/dl/7d06f9d35f689cade618b8c44c37bd835b7c464a/smedja-darwin-amd64.tar.gz"
      sha256 "791963cc3a63566618bd07030705cd20222bb403b45e1e6db85b7a8bd43ea58f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7d06f9d35f689cade618b8c44c37bd835b7c464a/smedja-linux-arm64.tar.gz"
      sha256 "2bd5acb2f7b615789cb41650c53055a95e6cc934e0eb5fe412125edcf4ebda34"
    end
    on_intel do
      url "https://console.smedja.app/dl/7d06f9d35f689cade618b8c44c37bd835b7c464a/smedja-linux-amd64.tar.gz"
      sha256 "74978d4f9a18fb329b6fefe3dd0d7437b613b4e66beb091128e45f422ff166b5"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
