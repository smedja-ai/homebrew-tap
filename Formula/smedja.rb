# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1010"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b4f599957016f2f48123d8823000b055d09e16e5/smedja-darwin-arm64.tar.gz"
      sha256 "b9a74f597f277df797fa3cfb4ea3547611e6bf579f227b20474173ac91f5a4ee"
    end
    on_intel do
      url "https://console.smedja.app/dl/b4f599957016f2f48123d8823000b055d09e16e5/smedja-darwin-amd64.tar.gz"
      sha256 "19648880997c007209baeaa520525a8aa0b44fc6e32162a31d909e0be6f320bb"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b4f599957016f2f48123d8823000b055d09e16e5/smedja-linux-arm64.tar.gz"
      sha256 "19d6c48e2840bb9f76337833fcafee51fd306cba4cbb23b2f647d741ffa26213"
    end
    on_intel do
      url "https://console.smedja.app/dl/b4f599957016f2f48123d8823000b055d09e16e5/smedja-linux-amd64.tar.gz"
      sha256 "fd853f40659e3a5da35b79bc86c73938832d6017f43d90fb9f88602f529ce025"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
