# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1309"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3b22cf8101aa871ede9cc8718eabc9ec2a8a7065/smedja-darwin-arm64.tar.gz"
      sha256 "f0fe6379d4024a3059391aedec8d5ae5626ca67686e6ee2fa62ee6532f55484b"
    end
    on_intel do
      url "https://console.smedja.app/dl/3b22cf8101aa871ede9cc8718eabc9ec2a8a7065/smedja-darwin-amd64.tar.gz"
      sha256 "cfb92b84be70363daa714548df4b45f938f6d8a7629c765c1f88c212fbde171b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3b22cf8101aa871ede9cc8718eabc9ec2a8a7065/smedja-linux-arm64.tar.gz"
      sha256 "eaca376d71823f30cf618212066b479679bc8e7f83fa8639ed3ed6f97ef5135f"
    end
    on_intel do
      url "https://console.smedja.app/dl/3b22cf8101aa871ede9cc8718eabc9ec2a8a7065/smedja-linux-amd64.tar.gz"
      sha256 "7648f5e46b1432761a137d9a1d03cf80c079708cb21a0b1e50927364f0363eb6"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
