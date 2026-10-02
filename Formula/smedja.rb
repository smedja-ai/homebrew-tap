# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.829"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/f2221fbc3f325bd79da3524fc27ade3ae0127ca9/smedja-darwin-arm64.tar.gz"
      sha256 "a7bbdefdc90534812445d0be572bc021158700b8bf8c74054ea505f427bfba36"
    end
    on_intel do
      url "https://console.smedja.app/dl/f2221fbc3f325bd79da3524fc27ade3ae0127ca9/smedja-darwin-amd64.tar.gz"
      sha256 "6aa7f95b6acdf339aa488e265de5adadbc7c45e2519127cc374cff542b756ac0"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/f2221fbc3f325bd79da3524fc27ade3ae0127ca9/smedja-linux-arm64.tar.gz"
      sha256 "1df385b7ccf2b4b1742942156fb9c09e40d111ab92da6e73182f5272afb0f039"
    end
    on_intel do
      url "https://console.smedja.app/dl/f2221fbc3f325bd79da3524fc27ade3ae0127ca9/smedja-linux-amd64.tar.gz"
      sha256 "6a18926a69143fe5ed91413e455ff78ff6082e9771c3fd83cff52322560231ff"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
