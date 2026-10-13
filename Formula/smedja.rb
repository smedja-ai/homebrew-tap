# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1237"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9a07b259e45fc495fdef33109e14eafeb2988367/smedja-darwin-arm64.tar.gz"
      sha256 "e69a07a2518d782106ef76718d7ec18550badfa2a35c77b6336e94c850f942f6"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a07b259e45fc495fdef33109e14eafeb2988367/smedja-darwin-amd64.tar.gz"
      sha256 "aeb4561522a07b4d06d843c529713f764f95207a24f028dd2b3f0b6499ec9bf7"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9a07b259e45fc495fdef33109e14eafeb2988367/smedja-linux-arm64.tar.gz"
      sha256 "dd0654f99000d76095d476d6f6054c5b25500a73101d29b1f64af86f747bca03"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a07b259e45fc495fdef33109e14eafeb2988367/smedja-linux-amd64.tar.gz"
      sha256 "38324a3980e3ea649bc3e3cc513f7d60e38627db4115067153d6fa1fedc536e7"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
