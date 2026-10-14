# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1266"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/91fba479d4a0eeb19592c9969931851b98c442ba/smedja-darwin-arm64.tar.gz"
      sha256 "111d4906dcf8063317d9be655e313f7dd376a1c56ba6e6a5c5c8d60c089cbad2"
    end
    on_intel do
      url "https://console.smedja.app/dl/91fba479d4a0eeb19592c9969931851b98c442ba/smedja-darwin-amd64.tar.gz"
      sha256 "30e7d8d026fbd1ea6b0927c097e18f3f322670899bcdacb06824fcdcaa37b150"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/91fba479d4a0eeb19592c9969931851b98c442ba/smedja-linux-arm64.tar.gz"
      sha256 "b7cb456b67dceaa480b2a6ec398b21271fa0ceef789809ca6f763766bcbbf115"
    end
    on_intel do
      url "https://console.smedja.app/dl/91fba479d4a0eeb19592c9969931851b98c442ba/smedja-linux-amd64.tar.gz"
      sha256 "eaa2182f07a6f7f170dcb0f1e012df8e183e1479f5567ebef94c16337b37c344"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
