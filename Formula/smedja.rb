# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1122"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/405c36c67f5a25d8eee0f5298b8b72ba45d4334f/smedja-darwin-arm64.tar.gz"
      sha256 "d02fd885f39500ccd1982a775cc2b9e4db604c1795d88911fd87ec7209d123e7"
    end
    on_intel do
      url "https://console.smedja.app/dl/405c36c67f5a25d8eee0f5298b8b72ba45d4334f/smedja-darwin-amd64.tar.gz"
      sha256 "99335c3a94adc944b4fa4d164871193e75c9ec4c27ab0e9de8f74c33929def3c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/405c36c67f5a25d8eee0f5298b8b72ba45d4334f/smedja-linux-arm64.tar.gz"
      sha256 "fd37c2962bf5eb727dc1d0f37598fb21e7adbc2a7438916e8bcfa5b214af75e3"
    end
    on_intel do
      url "https://console.smedja.app/dl/405c36c67f5a25d8eee0f5298b8b72ba45d4334f/smedja-linux-amd64.tar.gz"
      sha256 "0a4bc7b70a35c353912bf69d09053ef8e4ce1b7c95ae58380a971de4f8e14623"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
