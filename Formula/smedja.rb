# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1100"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/00ade490a2e3ce93585991624731b113f53ac166/smedja-darwin-arm64.tar.gz"
      sha256 "d60c744f53ced113f9170def99cb694e9e17ca0278e876e01c9eb59b75ca9cc7"
    end
    on_intel do
      url "https://console.smedja.app/dl/00ade490a2e3ce93585991624731b113f53ac166/smedja-darwin-amd64.tar.gz"
      sha256 "28a1c04268b7e920a0d6f691f97b491b61f208a5437845219d21c2df92a5d8aa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/00ade490a2e3ce93585991624731b113f53ac166/smedja-linux-arm64.tar.gz"
      sha256 "4567752409e73f786c65ac38ed0728ca4a8fa3d562d3e748357715f2448b2643"
    end
    on_intel do
      url "https://console.smedja.app/dl/00ade490a2e3ce93585991624731b113f53ac166/smedja-linux-amd64.tar.gz"
      sha256 "4eddfd004afea1b17c7e40d1bb98cc11e896a6c52f7e9c4d6b0933aff0769f11"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
