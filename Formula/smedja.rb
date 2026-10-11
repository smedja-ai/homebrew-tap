# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1104"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/e2b8b69f14a27594aac66f6e926d9cf6b5ebf55c/smedja-darwin-arm64.tar.gz"
      sha256 "257145522bc544b271580712078bd60c319334b8532e2f227c784e5927ea38da"
    end
    on_intel do
      url "https://console.smedja.app/dl/e2b8b69f14a27594aac66f6e926d9cf6b5ebf55c/smedja-darwin-amd64.tar.gz"
      sha256 "da33094bfcfc504a6d6678e92df32a038a8947c584032188c7220863bc625763"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/e2b8b69f14a27594aac66f6e926d9cf6b5ebf55c/smedja-linux-arm64.tar.gz"
      sha256 "da3fcd1f6ec9f0b1119a87977520b22b26af05ced6d755c4fe4aba0a4c95481f"
    end
    on_intel do
      url "https://console.smedja.app/dl/e2b8b69f14a27594aac66f6e926d9cf6b5ebf55c/smedja-linux-amd64.tar.gz"
      sha256 "4bc7500b611bcfab99b52d31f025d8b5a1389cc9402884715dd97948df2bb11a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
