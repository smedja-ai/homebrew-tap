# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1189"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/dc4899146725b1975efc97c8b955dadbd55ca727/smedja-darwin-arm64.tar.gz"
      sha256 "2911c6a7e1ea75d04f5902ee9eef3e7c9e68d162ba425748a5a1ac2319958eaf"
    end
    on_intel do
      url "https://console.smedja.app/dl/dc4899146725b1975efc97c8b955dadbd55ca727/smedja-darwin-amd64.tar.gz"
      sha256 "0f1c108adaec65e0b524f6e50e3da784402de8ad1372c10a9e60fb8984a0508f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/dc4899146725b1975efc97c8b955dadbd55ca727/smedja-linux-arm64.tar.gz"
      sha256 "7c814ba6fca103a9e85bd228d31b3495499b56842522c68fb2f8c130560229f8"
    end
    on_intel do
      url "https://console.smedja.app/dl/dc4899146725b1975efc97c8b955dadbd55ca727/smedja-linux-amd64.tar.gz"
      sha256 "b2f1906c2aa2bb387e5d5bf4e8bbceff90652545f10d42ee784b29d4d599572a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
