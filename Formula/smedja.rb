# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1296"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/06e209e650c59d118389b9610cfa25b7cf04a1d7/smedja-darwin-arm64.tar.gz"
      sha256 "15d735bc220bb6d0264ed3569aa7881fc2f95de504c1ee8fbec4120232030d1d"
    end
    on_intel do
      url "https://console.smedja.app/dl/06e209e650c59d118389b9610cfa25b7cf04a1d7/smedja-darwin-amd64.tar.gz"
      sha256 "718ce0c767a020dd3fc67e9bdaf18a65b7fb8461ed20600c568f8b07966b6826"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/06e209e650c59d118389b9610cfa25b7cf04a1d7/smedja-linux-arm64.tar.gz"
      sha256 "edf9caa611e7fabd5a2b3d566e311eb3936d0f832899c131f8c0741da6656ea7"
    end
    on_intel do
      url "https://console.smedja.app/dl/06e209e650c59d118389b9610cfa25b7cf04a1d7/smedja-linux-amd64.tar.gz"
      sha256 "2c41d0e5e2f3348a16170ba894f812f2c731eef0b4f1e1d85d491c6a1097da95"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
