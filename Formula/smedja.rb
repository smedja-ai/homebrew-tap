# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1048"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d6843b7a869e1f9059b1b03a562a0236b4812f93/smedja-darwin-arm64.tar.gz"
      sha256 "300198aff3566395b615dac43c94c79c41a5b1352dce8b46d6f06076d3859eb1"
    end
    on_intel do
      url "https://console.smedja.app/dl/d6843b7a869e1f9059b1b03a562a0236b4812f93/smedja-darwin-amd64.tar.gz"
      sha256 "d677bfb6dafe6c78ae4dcba69d4ac51c1ff7e790e34e6bb3e9985e8becaa24e5"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d6843b7a869e1f9059b1b03a562a0236b4812f93/smedja-linux-arm64.tar.gz"
      sha256 "27ba6feaddc4e930289b59ca8279ab55bfebd8d508b17acf5964e18534850f18"
    end
    on_intel do
      url "https://console.smedja.app/dl/d6843b7a869e1f9059b1b03a562a0236b4812f93/smedja-linux-amd64.tar.gz"
      sha256 "426bcd1a04cfb53406825e5ec2ae3f762f860fae0e8f7fa7c386e224131d0369"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
