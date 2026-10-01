# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.818"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2d979856c4cfca14100d0b1a86d6a8562b4005ee/smedja-darwin-arm64.tar.gz"
      sha256 "8ae25efc13e638516c80896d64e2a7e4627b9579aab3a6840443f8ca60209468"
    end
    on_intel do
      url "https://console.smedja.app/dl/2d979856c4cfca14100d0b1a86d6a8562b4005ee/smedja-darwin-amd64.tar.gz"
      sha256 "4cc6e83423587b902f698f4ff097e7ee4b0e1df9e1362b0e22277d9ddb43e29d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2d979856c4cfca14100d0b1a86d6a8562b4005ee/smedja-linux-arm64.tar.gz"
      sha256 "d0a04805b693c45e05e0b2a22b7b86fee0c2074ee902ee617b042ec2df35cd1f"
    end
    on_intel do
      url "https://console.smedja.app/dl/2d979856c4cfca14100d0b1a86d6a8562b4005ee/smedja-linux-amd64.tar.gz"
      sha256 "41306831139d8466e830e9efaa270d3efa3cda53b6d055f9fc66cb09dd258335"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
