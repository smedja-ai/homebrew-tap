# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1490"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0b1f487d000180686032af31c3dd3de670f2a3d0/smedja-darwin-arm64.tar.gz"
      sha256 "d900ea623d6b7a7c7d08af6b1b6a26c20b0512bdef2f783780614adbf5cccf93"
    end
    on_intel do
      url "https://console.smedja.app/dl/0b1f487d000180686032af31c3dd3de670f2a3d0/smedja-darwin-amd64.tar.gz"
      sha256 "306bcf81bd3403dc862368f2ab234d5bac1196bea3823a4e54ecdb8a5afb6428"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0b1f487d000180686032af31c3dd3de670f2a3d0/smedja-linux-arm64.tar.gz"
      sha256 "8c72ff174ccfb6de575edf6a98e17228efbbb6b371d112346e1072822e2c7580"
    end
    on_intel do
      url "https://console.smedja.app/dl/0b1f487d000180686032af31c3dd3de670f2a3d0/smedja-linux-amd64.tar.gz"
      sha256 "f5323fc5932f0711ac57d0c5add5b5e94f0d90d75ef9f1264317fdb0b3c652e6"
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
