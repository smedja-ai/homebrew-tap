# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1099"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/662983f83a050a04e7cfaeeea9c665a119f29781/smedja-darwin-arm64.tar.gz"
      sha256 "69dd83d800da9b3587f411134a9e1b37e99effdac2ace502da96f6ba733fda39"
    end
    on_intel do
      url "https://console.smedja.app/dl/662983f83a050a04e7cfaeeea9c665a119f29781/smedja-darwin-amd64.tar.gz"
      sha256 "1a8cc1034c35181751020071bf31dfa0c32f444a5a9f15d55b1d2b874348382f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/662983f83a050a04e7cfaeeea9c665a119f29781/smedja-linux-arm64.tar.gz"
      sha256 "ebe10244d110b3329fb621c8a4528d10e42d4525d799c84b5d50f6ad53b282d3"
    end
    on_intel do
      url "https://console.smedja.app/dl/662983f83a050a04e7cfaeeea9c665a119f29781/smedja-linux-amd64.tar.gz"
      sha256 "53044dd1f4c693ec62153d2f8ccc7d07305977dabda108a8dcfd4426d39cfdfb"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
