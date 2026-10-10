# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1058"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/693d8f7153a6b0884c5647bae10241bad04eb6e0/smedja-darwin-arm64.tar.gz"
      sha256 "8a6c714c9d84c2e3a671e9f3a8207673c698eb3388401c5bceae80a2ee086e30"
    end
    on_intel do
      url "https://console.smedja.app/dl/693d8f7153a6b0884c5647bae10241bad04eb6e0/smedja-darwin-amd64.tar.gz"
      sha256 "018e1d170640c9fa1a16fc21dc273860086ca2d419f557b9060d82ba56832528"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/693d8f7153a6b0884c5647bae10241bad04eb6e0/smedja-linux-arm64.tar.gz"
      sha256 "736238ef58903f158db4c8abb44928886ae3f01268f47fb2faf255ca3886b096"
    end
    on_intel do
      url "https://console.smedja.app/dl/693d8f7153a6b0884c5647bae10241bad04eb6e0/smedja-linux-amd64.tar.gz"
      sha256 "2b47ac47b9fbf8ee3752cd4b9c1a154fbeac76be5da7b7b214bfd3fb25debaea"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
