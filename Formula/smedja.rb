# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1240"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d3f6808986798b782cdaf576af80123c6574262b/smedja-darwin-arm64.tar.gz"
      sha256 "1d19192d759efee00a177d5626c7e4aa368dfeaa2971402f57fa3d2aece31869"
    end
    on_intel do
      url "https://console.smedja.app/dl/d3f6808986798b782cdaf576af80123c6574262b/smedja-darwin-amd64.tar.gz"
      sha256 "a59ff4491e4fb7e0cbbf3d6f2335f24bdfc0668cba4aa99d6b951e1bc70060be"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d3f6808986798b782cdaf576af80123c6574262b/smedja-linux-arm64.tar.gz"
      sha256 "4e45922984255b925835147a95bc6b2acda8c5ed0ab2ccd9a124fcac7c9a1ff9"
    end
    on_intel do
      url "https://console.smedja.app/dl/d3f6808986798b782cdaf576af80123c6574262b/smedja-linux-amd64.tar.gz"
      sha256 "270c4e618394b3468b118de1f9db1aba5beb949491d24c626d9f7c13b2741aa3"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
