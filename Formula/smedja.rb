# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1234"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0d85ea045e032e8fa953090a69489da0cbf5328d/smedja-darwin-arm64.tar.gz"
      sha256 "aae07d0ff74650a930a49e63c4ca8d23c0918b5d978b5ac99216eb9a1d1dc2fd"
    end
    on_intel do
      url "https://console.smedja.app/dl/0d85ea045e032e8fa953090a69489da0cbf5328d/smedja-darwin-amd64.tar.gz"
      sha256 "add213f91e3f6f36daf43e86185c5d0a2e1ad02fdffa3ceb20e83c3754f8e318"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0d85ea045e032e8fa953090a69489da0cbf5328d/smedja-linux-arm64.tar.gz"
      sha256 "69fa3b3067969b2b7054c96050de5263174a4c8449242a9ad14f15788f764478"
    end
    on_intel do
      url "https://console.smedja.app/dl/0d85ea045e032e8fa953090a69489da0cbf5328d/smedja-linux-amd64.tar.gz"
      sha256 "9d06bc07b13e02149e66ca552e5673eb353aa511c12a982cbc3bbe843bc566e1"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
