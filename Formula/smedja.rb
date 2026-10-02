# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.828"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/820c431a7f0bbecd007b4b38cf615e71316e97bb/smedja-darwin-arm64.tar.gz"
      sha256 "6e1d88188a8184a4db9b517d54bbbd34b3af8fbc35267545dea5260d3d4ed766"
    end
    on_intel do
      url "https://console.smedja.app/dl/820c431a7f0bbecd007b4b38cf615e71316e97bb/smedja-darwin-amd64.tar.gz"
      sha256 "b3d9caa2d6a6dc22c6a6216299770650c59deb50e6401cd6f041754cc4ba6378"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/820c431a7f0bbecd007b4b38cf615e71316e97bb/smedja-linux-arm64.tar.gz"
      sha256 "f092fc9cc6607e0e33d0625b4ac5815598e526a65ab03b4ed71d057a89659494"
    end
    on_intel do
      url "https://console.smedja.app/dl/820c431a7f0bbecd007b4b38cf615e71316e97bb/smedja-linux-amd64.tar.gz"
      sha256 "2cec8a86b87273b1b913bb9c91c9e5359ec69497526a81aee4e58ebf5956b24c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
