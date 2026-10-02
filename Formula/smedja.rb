# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.837"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7361e544ccdeab5f593613d0974520362c483466/smedja-darwin-arm64.tar.gz"
      sha256 "266a3bc67534132716283b7237437612eb9aa3f36081690d2d071c32be87f666"
    end
    on_intel do
      url "https://console.smedja.app/dl/7361e544ccdeab5f593613d0974520362c483466/smedja-darwin-amd64.tar.gz"
      sha256 "7fc6c9cf0d64c7802133dad2774b25b93bb4462908b39d71f1feca321422d4c0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7361e544ccdeab5f593613d0974520362c483466/smedja-linux-arm64.tar.gz"
      sha256 "d8e96105ea2caa8a7611ea624de137c7619f8e3a8ec129bf7ed32cc06caa68e8"
    end
    on_intel do
      url "https://console.smedja.app/dl/7361e544ccdeab5f593613d0974520362c483466/smedja-linux-amd64.tar.gz"
      sha256 "e205a803cde2610a52a293626f36b617e2ce6b3b35228663800efcecc7da3761"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
