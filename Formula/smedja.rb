# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.831"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fd44acd8c37c7f4ef40d1e1bceb91f2b57d90fb1/smedja-darwin-arm64.tar.gz"
      sha256 "47cd33b1463fa831fa0d4e0cad464742479415037fecd86752ebec577a3bd2cc"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd44acd8c37c7f4ef40d1e1bceb91f2b57d90fb1/smedja-darwin-amd64.tar.gz"
      sha256 "78a7d8534de17a6b69f7229cd0c2b835f3e1e52b13da5b9155126c92ab59e182"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fd44acd8c37c7f4ef40d1e1bceb91f2b57d90fb1/smedja-linux-arm64.tar.gz"
      sha256 "b5d8decb273e9820e918476b06744d09eff789c0eb42806955b7a0e1b2a2b876"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd44acd8c37c7f4ef40d1e1bceb91f2b57d90fb1/smedja-linux-amd64.tar.gz"
      sha256 "1e51b607d3066022db9f120bb484ae471640ced2103efa3ed782878258b0da7a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
