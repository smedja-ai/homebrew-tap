# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.933"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/5cadde627e06c2b355200b1882734ab95d16e355/smedja-darwin-arm64.tar.gz"
      sha256 "ff937f2d662dab805fd8bafdeeb7b1bbcc648e1026476b08ea8596161b25bd39"
    end
    on_intel do
      url "https://console.smedja.app/dl/5cadde627e06c2b355200b1882734ab95d16e355/smedja-darwin-amd64.tar.gz"
      sha256 "5d427298a19d207833d0cc3fd4b12fbb763919c300c5cde30d9f79ad196c7a55"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/5cadde627e06c2b355200b1882734ab95d16e355/smedja-linux-arm64.tar.gz"
      sha256 "bfdd4c8a6ea65ab54ad12372ebb5b8ff795829b00ef266b1487785c72b7dd72b"
    end
    on_intel do
      url "https://console.smedja.app/dl/5cadde627e06c2b355200b1882734ab95d16e355/smedja-linux-amd64.tar.gz"
      sha256 "1da3724706be75e1cdd7a9280618be8529d48af06250f95569dffc7c84673085"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
