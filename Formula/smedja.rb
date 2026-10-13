# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1223"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ccd0bedab55c3a52b32339960a2ddb646816344e/smedja-darwin-arm64.tar.gz"
      sha256 "ffa2ba0fdf5033908614f82f0ebeb9b3e5feec24c64706070f1b98e0f2f6c194"
    end
    on_intel do
      url "https://console.smedja.app/dl/ccd0bedab55c3a52b32339960a2ddb646816344e/smedja-darwin-amd64.tar.gz"
      sha256 "7dc411fdeeb028830be2f44213e0cbe2987dd9cd04763cc1ed7400a6ce2cffc1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ccd0bedab55c3a52b32339960a2ddb646816344e/smedja-linux-arm64.tar.gz"
      sha256 "4fcbf95b0db11c663210ebc47bdcb1a7d8b0f3759cb8438df312f77527b16c69"
    end
    on_intel do
      url "https://console.smedja.app/dl/ccd0bedab55c3a52b32339960a2ddb646816344e/smedja-linux-amd64.tar.gz"
      sha256 "b4f4e2f99b4e6e50c3beb4141d93ed0d7f0085269416a2d964c8d61b13518bd6"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
