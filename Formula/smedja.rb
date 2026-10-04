# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.883"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7ebab9f8ec5486032046448be494b5be99c7f67e/smedja-darwin-arm64.tar.gz"
      sha256 "7fe1fd4fbb7301c142b69bb2a409abd9ce2d332bb430cb824373067ee8b482f6"
    end
    on_intel do
      url "https://console.smedja.app/dl/7ebab9f8ec5486032046448be494b5be99c7f67e/smedja-darwin-amd64.tar.gz"
      sha256 "bf0799501c3440c241b8eb4dbf12e2cbfe7dd962c48359adfc213fc4ec7d56d5"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7ebab9f8ec5486032046448be494b5be99c7f67e/smedja-linux-arm64.tar.gz"
      sha256 "7c5020182f50a60d8de3dc588839866d497b4211cf3567e4e769591cf4aec9a3"
    end
    on_intel do
      url "https://console.smedja.app/dl/7ebab9f8ec5486032046448be494b5be99c7f67e/smedja-linux-amd64.tar.gz"
      sha256 "7e451d3ecdc7222e9738de13c4f7caf4ac3a4696ec7f3ac44b3e62f2a4062e3a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
