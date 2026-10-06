# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.948"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/11014b84d89198206556900b3af36503260cfab5/smedja-darwin-arm64.tar.gz"
      sha256 "3c2aef175eb895efd2cb4cfec310e1d1c369c4e6d93d88388756e8ef92dd71f4"
    end
    on_intel do
      url "https://console.smedja.app/dl/11014b84d89198206556900b3af36503260cfab5/smedja-darwin-amd64.tar.gz"
      sha256 "dad3ac87fb561e5e7be41d1ae5c282caec8dcc9812e402680866ba85ed52a650"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/11014b84d89198206556900b3af36503260cfab5/smedja-linux-arm64.tar.gz"
      sha256 "ae8dbbb925a8765f10a824ed3ebb738be62c487190c3fb8d97544eacff151262"
    end
    on_intel do
      url "https://console.smedja.app/dl/11014b84d89198206556900b3af36503260cfab5/smedja-linux-amd64.tar.gz"
      sha256 "5d24ae6fda3c60021cf8d007d7f088a91a375c67acb2dcb17c67c624ff0a3360"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
