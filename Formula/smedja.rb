# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1037"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/61bbf30b388230621249e78c55842a061aff69da/smedja-darwin-arm64.tar.gz"
      sha256 "a6c8bf9445040e27cdfd15fbd7a3b346a7e9fd810ac8d7c88d7f69947fdc0a34"
    end
    on_intel do
      url "https://console.smedja.app/dl/61bbf30b388230621249e78c55842a061aff69da/smedja-darwin-amd64.tar.gz"
      sha256 "2681cf6c6109aaaab06f492f824da8d0ceddb91d37845c21452497fb892d77ab"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/61bbf30b388230621249e78c55842a061aff69da/smedja-linux-arm64.tar.gz"
      sha256 "e1a397be875d15f9afe4b34a8a4e3801c5ba206be8da425b2b4b11bce17d3c99"
    end
    on_intel do
      url "https://console.smedja.app/dl/61bbf30b388230621249e78c55842a061aff69da/smedja-linux-amd64.tar.gz"
      sha256 "3b3ca2190f9c67a0fffb5259632aa9964ac1f7fcbf4bca8a374705bd2cb24b14"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
