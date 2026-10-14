# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1280"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9aaeaa791f80d6c034a5fc9680ad63817c54bff3/smedja-darwin-arm64.tar.gz"
      sha256 "16f6e8c7adbcbe9a8fb533f6d4086338adb35f7c34803788ec9b4188e26e05e4"
    end
    on_intel do
      url "https://console.smedja.app/dl/9aaeaa791f80d6c034a5fc9680ad63817c54bff3/smedja-darwin-amd64.tar.gz"
      sha256 "91f412bfe1795d3f17d51539c2edae087c0f6b7c046e3e83df9423792dbb81b4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9aaeaa791f80d6c034a5fc9680ad63817c54bff3/smedja-linux-arm64.tar.gz"
      sha256 "2a70a330d7acb308fa5166862569335f53958c6b4f1603de9537d662cbe9e136"
    end
    on_intel do
      url "https://console.smedja.app/dl/9aaeaa791f80d6c034a5fc9680ad63817c54bff3/smedja-linux-amd64.tar.gz"
      sha256 "8c61716d6703d70662e43c22cd79cf556ac0a81ddcdaa9ea89a5bebda70a871f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
