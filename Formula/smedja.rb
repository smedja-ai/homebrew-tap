# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.857"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0a57e674f3bcc8324854efb9a1fb002d56b7f959/smedja-darwin-arm64.tar.gz"
      sha256 "a2bae13469f56b3c541a67d126e5e2b60988db7e5522e47ab4cede92233bf5a3"
    end
    on_intel do
      url "https://console.smedja.app/dl/0a57e674f3bcc8324854efb9a1fb002d56b7f959/smedja-darwin-amd64.tar.gz"
      sha256 "44ebdb3671d916c4f5a245bed8d059e2e794d660bd98884bef40189a3779d988"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0a57e674f3bcc8324854efb9a1fb002d56b7f959/smedja-linux-arm64.tar.gz"
      sha256 "451ab25d6bc122854c253143f26f6ef96b3a8abcc6d557a538c9e2efcfa34dde"
    end
    on_intel do
      url "https://console.smedja.app/dl/0a57e674f3bcc8324854efb9a1fb002d56b7f959/smedja-linux-amd64.tar.gz"
      sha256 "57ed0b623f3a94a6fc8a6d9b7c22879916bf7f1580ba379d892ccd95a7a478e4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
