# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1531"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0f1183fe5bc175af90991609bc26000a3c0f5ccf/smedja-darwin-arm64.tar.gz"
      sha256 "9228d2771139877d684bc37ddc01e04167c9cc32c9ccdd4eeaef31c4542a893b"
    end
    on_intel do
      url "https://console.smedja.app/dl/0f1183fe5bc175af90991609bc26000a3c0f5ccf/smedja-darwin-amd64.tar.gz"
      sha256 "359743bb240cc892b548af89c885f44d30c0b7c27100b962afec03783b7fbeca"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0f1183fe5bc175af90991609bc26000a3c0f5ccf/smedja-linux-arm64.tar.gz"
      sha256 "0277b21cb771c6e48ddd360d0d5d180235bdfa6fc26723826b64acde15be7479"
    end
    on_intel do
      url "https://console.smedja.app/dl/0f1183fe5bc175af90991609bc26000a3c0f5ccf/smedja-linux-amd64.tar.gz"
      sha256 "8d0f96d970de0d1a927a2b614d9d5537d2e108c94b6e56532572bb582b45b97d"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
