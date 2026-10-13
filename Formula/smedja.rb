# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1231"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/cfb0cf9d4ed72bb8dca904f090efe6c3445f95cc/smedja-darwin-arm64.tar.gz"
      sha256 "8a6be602ef039feaa5a930904f8321c7ed72e50e0fddc93271f4e540b1871904"
    end
    on_intel do
      url "https://console.smedja.app/dl/cfb0cf9d4ed72bb8dca904f090efe6c3445f95cc/smedja-darwin-amd64.tar.gz"
      sha256 "99632539b59765682cff5c5ed741abf18e970de6fa4a3a4aaba5840c6e734aaa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/cfb0cf9d4ed72bb8dca904f090efe6c3445f95cc/smedja-linux-arm64.tar.gz"
      sha256 "60b34496508e5a6ae5edefb483925692f8f793bf352b963b0ec289b5579f0fbd"
    end
    on_intel do
      url "https://console.smedja.app/dl/cfb0cf9d4ed72bb8dca904f090efe6c3445f95cc/smedja-linux-amd64.tar.gz"
      sha256 "4bab3050ebbe6c1d0ac60c9c5f31942c4ad6bcd14a2a073204fe8d8e55f36dab"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
