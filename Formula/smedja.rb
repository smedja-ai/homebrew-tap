# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.821"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ef03c65ad11eeaeec2ffcca0ccbf71ce14f2bee0/smedja-darwin-arm64.tar.gz"
      sha256 "d31a1b71e6a18a608bec854e2aa59120b2d98b6335bc42582c72bce3f2d4295e"
    end
    on_intel do
      url "https://console.smedja.app/dl/ef03c65ad11eeaeec2ffcca0ccbf71ce14f2bee0/smedja-darwin-amd64.tar.gz"
      sha256 "977b2955056d22226794217383a698333dcc8f126c75256fea2b02b20c25d60d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ef03c65ad11eeaeec2ffcca0ccbf71ce14f2bee0/smedja-linux-arm64.tar.gz"
      sha256 "028e29148cb691e9f15c4bc865b614b88515998770864e7fbad02d31cc7e721f"
    end
    on_intel do
      url "https://console.smedja.app/dl/ef03c65ad11eeaeec2ffcca0ccbf71ce14f2bee0/smedja-linux-amd64.tar.gz"
      sha256 "b823ff04cfa4547885b528abf17c0a593bc91f9509603ddeb908b8b43c8ca0cd"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
