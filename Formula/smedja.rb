# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.931"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/066b975ebc38817611bc12805a2542ebfd35caac/smedja-darwin-arm64.tar.gz"
      sha256 "b884c85f623122043121ea92601e4abf010d25d3079688c4cc7f2e281129efc6"
    end
    on_intel do
      url "https://console.smedja.app/dl/066b975ebc38817611bc12805a2542ebfd35caac/smedja-darwin-amd64.tar.gz"
      sha256 "943130435307b305aa884b7937b93729acf99a5776195437900d6258e42e93dc"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/066b975ebc38817611bc12805a2542ebfd35caac/smedja-linux-arm64.tar.gz"
      sha256 "1218fb5eb09446cf965e1f3c1b800d6729e33bac658934cce2bbec461b4d6ec0"
    end
    on_intel do
      url "https://console.smedja.app/dl/066b975ebc38817611bc12805a2542ebfd35caac/smedja-linux-amd64.tar.gz"
      sha256 "5cb7c557a1f8084dc649fcd3805a0475d08edd00c548b27e326070b1e9dd1e98"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
