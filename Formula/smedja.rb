# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.885"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0d183f21fc1f9382f6450705959fba5b31663ded/smedja-darwin-arm64.tar.gz"
      sha256 "47d568faabe1b900e1e64a40a7ba1f6907898ab84c603d85a2546d85006cb9e3"
    end
    on_intel do
      url "https://console.smedja.app/dl/0d183f21fc1f9382f6450705959fba5b31663ded/smedja-darwin-amd64.tar.gz"
      sha256 "6227d9f637a2de815724c58348ce803e60317135153d1b0f1f35767300983ad0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0d183f21fc1f9382f6450705959fba5b31663ded/smedja-linux-arm64.tar.gz"
      sha256 "4446affc687240ec1c28a0ee22b95623a90fc490ed93c9a7cc87384795df0720"
    end
    on_intel do
      url "https://console.smedja.app/dl/0d183f21fc1f9382f6450705959fba5b31663ded/smedja-linux-amd64.tar.gz"
      sha256 "71bb9b43d706a6e51afeb628ba18700e85c0fbd79fc0485d93e8b953ed0ab96a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
