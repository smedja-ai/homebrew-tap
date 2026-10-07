# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.991"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ad0bc84906afa7158ded72c625b8be87a32133dd/smedja-darwin-arm64.tar.gz"
      sha256 "808ac259999d94ec5cceca3ae5b638c6d90cb1cbcbc6eda078afc808721ae462"
    end
    on_intel do
      url "https://console.smedja.app/dl/ad0bc84906afa7158ded72c625b8be87a32133dd/smedja-darwin-amd64.tar.gz"
      sha256 "1a23ffe55bc1a9891166a0ab79f9c6ce7d0be458b1e1d16947ee660660a4c0a5"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ad0bc84906afa7158ded72c625b8be87a32133dd/smedja-linux-arm64.tar.gz"
      sha256 "58ba3bfad2571b8961a8ba6a4e559d2ca78347fa57f5ba1fcf99e357ceed15a9"
    end
    on_intel do
      url "https://console.smedja.app/dl/ad0bc84906afa7158ded72c625b8be87a32133dd/smedja-linux-amd64.tar.gz"
      sha256 "b7a655f3d05dde4bfd256af93b17a80e538dd4173bf79ff218520f2de86530f4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
