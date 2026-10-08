# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1011"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2b37e3b962797cb0dddcf3aa24ca6eeee4db278c/smedja-darwin-arm64.tar.gz"
      sha256 "866b0a5833c0a0485fb2a418a15cf7931d1dbfc22096ceec6e551464b264409f"
    end
    on_intel do
      url "https://console.smedja.app/dl/2b37e3b962797cb0dddcf3aa24ca6eeee4db278c/smedja-darwin-amd64.tar.gz"
      sha256 "af0adeb8e6bb62cf39bf165eaf19ac83d96e2649d58a80278d79ec92b2dc38e1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2b37e3b962797cb0dddcf3aa24ca6eeee4db278c/smedja-linux-arm64.tar.gz"
      sha256 "7586609dfa55001cb6c9e6dc454b7c05892385f7007cc42492ccba12b6283368"
    end
    on_intel do
      url "https://console.smedja.app/dl/2b37e3b962797cb0dddcf3aa24ca6eeee4db278c/smedja-linux-amd64.tar.gz"
      sha256 "f51f6d33cb7248d6607526144f9a3a4236a84c1050fc66f53afc68c2df9c9bf8"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
