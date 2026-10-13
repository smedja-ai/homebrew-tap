# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1248"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/283cc52350bf3fcd7ebbc6257e3a2d00c1a8c1d8/smedja-darwin-arm64.tar.gz"
      sha256 "e32806bc42e60c526212997935d473568aab32d2d442dedcd08187567f4dace7"
    end
    on_intel do
      url "https://console.smedja.app/dl/283cc52350bf3fcd7ebbc6257e3a2d00c1a8c1d8/smedja-darwin-amd64.tar.gz"
      sha256 "af1a79df9c36bfdffe99f88c67ff5d218ed05e49b11bc53f4185c4d481471c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/283cc52350bf3fcd7ebbc6257e3a2d00c1a8c1d8/smedja-linux-arm64.tar.gz"
      sha256 "25f71d0e77fc47203a737e1182c323a7cad3b383a45fdc88bfbb8355037ef485"
    end
    on_intel do
      url "https://console.smedja.app/dl/283cc52350bf3fcd7ebbc6257e3a2d00c1a8c1d8/smedja-linux-amd64.tar.gz"
      sha256 "a0f9b38a2b65037ee97649f9df265fdd17f6df4a4b0029088b4c6f22b50d148b"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
