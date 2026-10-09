# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1030"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/eaa705c2b100745074d7c79f474a783e4d16ef32/smedja-darwin-arm64.tar.gz"
      sha256 "bee3497ef6246e738f353265993dbc61c343c8b2409b2961f8c75434fc07e4dc"
    end
    on_intel do
      url "https://console.smedja.app/dl/eaa705c2b100745074d7c79f474a783e4d16ef32/smedja-darwin-amd64.tar.gz"
      sha256 "2ac6694f76c950906d5d5a6cba4aaa1881fcc892e63dc2cd62868da5150c8fc0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/eaa705c2b100745074d7c79f474a783e4d16ef32/smedja-linux-arm64.tar.gz"
      sha256 "49d4f5c0f9b6abb765a47da0475b9385701d12cff48e5ffc40c2cd64e675095b"
    end
    on_intel do
      url "https://console.smedja.app/dl/eaa705c2b100745074d7c79f474a783e4d16ef32/smedja-linux-amd64.tar.gz"
      sha256 "ca83b0adc22876b9bcd27ab29393f9554fa24d7805039e17114d5a4b97aec467"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
