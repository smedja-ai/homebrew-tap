# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1186"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3c20228f1704b5fca9dd6f44bd42c53f88a64f46/smedja-darwin-arm64.tar.gz"
      sha256 "e31d8171381842a4519339381c42efafa03fb80ddca42b1daf0736d38eab755a"
    end
    on_intel do
      url "https://console.smedja.app/dl/3c20228f1704b5fca9dd6f44bd42c53f88a64f46/smedja-darwin-amd64.tar.gz"
      sha256 "3cf22a57b4d6d911f11b1bedf23e0db700e2f2c6b34b260f71633808d61d1d00"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3c20228f1704b5fca9dd6f44bd42c53f88a64f46/smedja-linux-arm64.tar.gz"
      sha256 "91863d83d5db4ab8e9aef4bd435754c6de42f412081acf26060edb29de754f8a"
    end
    on_intel do
      url "https://console.smedja.app/dl/3c20228f1704b5fca9dd6f44bd42c53f88a64f46/smedja-linux-amd64.tar.gz"
      sha256 "089fba9b91127607f5513d35520f47c56e0c06728f74c0aac932f05feff1d2ae"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
