# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.927"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/43a6c15f59975eda9993169a18492b1e991d6d1a/smedja-darwin-arm64.tar.gz"
      sha256 "c2abee2674ddf3394e1d1aa667b5b90a2b734dbd1fe71da27cc431787cadfd17"
    end
    on_intel do
      url "https://console.smedja.app/dl/43a6c15f59975eda9993169a18492b1e991d6d1a/smedja-darwin-amd64.tar.gz"
      sha256 "4a4f0af580fdb4ccdec5b074cc2f6765d3dff4da201ff79ab26e79d17ca356d0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/43a6c15f59975eda9993169a18492b1e991d6d1a/smedja-linux-arm64.tar.gz"
      sha256 "00fc0988167758a908bd9ff4755011a3f19225b7c4ce808078fc967ab410ffb5"
    end
    on_intel do
      url "https://console.smedja.app/dl/43a6c15f59975eda9993169a18492b1e991d6d1a/smedja-linux-amd64.tar.gz"
      sha256 "03e3e4f518ace65bcb257ce464ce69e9c7140f1f8bb994dcdf0dcc0239a5e9ac"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
