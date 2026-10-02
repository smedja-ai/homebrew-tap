# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.836"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/be2cafa42d1d73b4df74fd97fe852bcfab2bd3f2/smedja-darwin-arm64.tar.gz"
      sha256 "57594b3ffa44497ac5113493b43cd39ba062174a2cf375c430d8176b807f5ae8"
    end
    on_intel do
      url "https://console.smedja.app/dl/be2cafa42d1d73b4df74fd97fe852bcfab2bd3f2/smedja-darwin-amd64.tar.gz"
      sha256 "8531336b9108382e52e6caed95657533bcdb870c88f733dfafdea3160846ed45"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/be2cafa42d1d73b4df74fd97fe852bcfab2bd3f2/smedja-linux-arm64.tar.gz"
      sha256 "534abfcc2c06173c6d79216f6934e014ec0dc52768075a334f0648da294f2830"
    end
    on_intel do
      url "https://console.smedja.app/dl/be2cafa42d1d73b4df74fd97fe852bcfab2bd3f2/smedja-linux-amd64.tar.gz"
      sha256 "2d20bd91d568485839a5e604203923a9879c3ae2040f3be75cd64dbe5a1544a4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
