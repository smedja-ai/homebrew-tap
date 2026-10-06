# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.941"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/1ed2ddbf3017018d6428cb7ceb73c7b76cd37dfa/smedja-darwin-arm64.tar.gz"
      sha256 "5a45858d557f37bf51ca926e0ee3937ec350825f24afd81408fe9be00b078e9d"
    end
    on_intel do
      url "https://console.smedja.app/dl/1ed2ddbf3017018d6428cb7ceb73c7b76cd37dfa/smedja-darwin-amd64.tar.gz"
      sha256 "ed97d67b0831a993d25709c6101bd8c88bd717336c195a1582c6bd9ff88908e2"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/1ed2ddbf3017018d6428cb7ceb73c7b76cd37dfa/smedja-linux-arm64.tar.gz"
      sha256 "644d8e6900a947487080d5a7cc69c96ca76f7130728b734667b2a136224fd935"
    end
    on_intel do
      url "https://console.smedja.app/dl/1ed2ddbf3017018d6428cb7ceb73c7b76cd37dfa/smedja-linux-amd64.tar.gz"
      sha256 "779c41592db28a9ca18f44aa5620296e962ad12d1d5288fd25af8004adec6872"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
