# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1225"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bce150995d03c37095631714dcc8fa75885b703c/smedja-darwin-arm64.tar.gz"
      sha256 "a9ccc60d41b2a7ef43ca447e945aded128541fc2cf8128100ad6d5ae8b9ffa5e"
    end
    on_intel do
      url "https://console.smedja.app/dl/bce150995d03c37095631714dcc8fa75885b703c/smedja-darwin-amd64.tar.gz"
      sha256 "610c0fbc2d5160d998e7d1039ecf99b82b0caaaf5aa89ea70e72bff50ce37d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bce150995d03c37095631714dcc8fa75885b703c/smedja-linux-arm64.tar.gz"
      sha256 "69c07ed1891383730750471707acb99d5e9d939b0ee8186ba49835fee6389f65"
    end
    on_intel do
      url "https://console.smedja.app/dl/bce150995d03c37095631714dcc8fa75885b703c/smedja-linux-amd64.tar.gz"
      sha256 "ed29cc9a79a1bddb7aa62113f2eb6111a1b3c127401245a40e64fe9f82fc8241"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
