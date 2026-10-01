# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.819"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6ffabf1f76a88895d5d16240703649250addf3f1/smedja-darwin-arm64.tar.gz"
      sha256 "b6a45e607d469632dcc5726603a3e4062f92357b617a4fda4f64c42ba14fb1a0"
    end
    on_intel do
      url "https://console.smedja.app/dl/6ffabf1f76a88895d5d16240703649250addf3f1/smedja-darwin-amd64.tar.gz"
      sha256 "9780720c1d3bd412eaf7911eb381ea2848f081dfeebaa57e53014cc9f04c7a5d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6ffabf1f76a88895d5d16240703649250addf3f1/smedja-linux-arm64.tar.gz"
      sha256 "891b07e08ef171fd37f93648cb5c71ac1cb5eb7667babb186387cdbd8da9a691"
    end
    on_intel do
      url "https://console.smedja.app/dl/6ffabf1f76a88895d5d16240703649250addf3f1/smedja-linux-amd64.tar.gz"
      sha256 "b20451ea4548157bd594dface94ba7b41a024a33a98dcf0594932f00fea87b67"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
