# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1269"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/df86c92d396b61ee5d5e81e0facfc2aefe2d250c/smedja-darwin-arm64.tar.gz"
      sha256 "fa3b5c538c01898ab7bfe501a9bd6e4f990584e239f87eeb4f521931a4c8a999"
    end
    on_intel do
      url "https://console.smedja.app/dl/df86c92d396b61ee5d5e81e0facfc2aefe2d250c/smedja-darwin-amd64.tar.gz"
      sha256 "905a7876273e6aed990b98d91be49638b503edb93bba6da2a96464b59e8af116"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/df86c92d396b61ee5d5e81e0facfc2aefe2d250c/smedja-linux-arm64.tar.gz"
      sha256 "58121296e729da92ea885bf1316e790509d9af5b8b6c7371fe5559db051fe3f2"
    end
    on_intel do
      url "https://console.smedja.app/dl/df86c92d396b61ee5d5e81e0facfc2aefe2d250c/smedja-linux-amd64.tar.gz"
      sha256 "1ac3d33232337a81df84dce63372311b78e0d7f4ce28fe39ee8fec7f6ee88392"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
