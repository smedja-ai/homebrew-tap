# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.869"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bd6de0fb6f9a2d13d7c8dfa47480baa9b30f9f06/smedja-darwin-arm64.tar.gz"
      sha256 "800db942691aea890f36d8931082664592964063ee2deee869d5ca28abddd5a9"
    end
    on_intel do
      url "https://console.smedja.app/dl/bd6de0fb6f9a2d13d7c8dfa47480baa9b30f9f06/smedja-darwin-amd64.tar.gz"
      sha256 "369c8186966e0f348f406d4275ecd2e9ad445dba6a6f4c81f9d1de1c7712e1c4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bd6de0fb6f9a2d13d7c8dfa47480baa9b30f9f06/smedja-linux-arm64.tar.gz"
      sha256 "bc8a746fcfd65a0aae724c8d61aef0520b64830ddcb3f22d92387cf1bcedec04"
    end
    on_intel do
      url "https://console.smedja.app/dl/bd6de0fb6f9a2d13d7c8dfa47480baa9b30f9f06/smedja-linux-amd64.tar.gz"
      sha256 "36673369caa4e7a847ca51fdfe30c2d00ea8c2e9ce19757b014de6e70291bc70"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
