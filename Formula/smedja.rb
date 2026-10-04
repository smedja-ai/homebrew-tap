# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.886"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/5fe0fd75e3e1b2bb739bd38efac6fec203af184a/smedja-darwin-arm64.tar.gz"
      sha256 "f4e4b7b261a9366113efb4dffb7676adee008731a670891591897e017791a49f"
    end
    on_intel do
      url "https://console.smedja.app/dl/5fe0fd75e3e1b2bb739bd38efac6fec203af184a/smedja-darwin-amd64.tar.gz"
      sha256 "7483d8b89c20156d3644c49cf233d07faa62271c65588acd184f5c9697ce76de"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/5fe0fd75e3e1b2bb739bd38efac6fec203af184a/smedja-linux-arm64.tar.gz"
      sha256 "8662f72805196a0c678c64100e2954e4bb9247fe473515348dbb61f788f61973"
    end
    on_intel do
      url "https://console.smedja.app/dl/5fe0fd75e3e1b2bb739bd38efac6fec203af184a/smedja-linux-amd64.tar.gz"
      sha256 "c2b90df6abd199dfba5f34c5c079216b4ed3a8618f78614f8a0f6ae747f7b1b2"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
