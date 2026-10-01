# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.806"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/39ecf5799800847d7b1148f58bc5911cb090ba62/smedja-darwin-arm64.tar.gz"
      sha256 "dc268041b452061cae04caffcc7a5bcc48ff1f020eef0c1ddc8fa2cdacb5fb0f"
    end
    on_intel do
      url "https://console.smedja.app/dl/39ecf5799800847d7b1148f58bc5911cb090ba62/smedja-darwin-amd64.tar.gz"
      sha256 "c88c17e43f496c947024409f7c067bbcaa23e0d83290635ab54b3d0655e83b1a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/39ecf5799800847d7b1148f58bc5911cb090ba62/smedja-linux-arm64.tar.gz"
      sha256 "6c9459c6b291610b8028f2c47e17076718a474056c77f472acda20cc7498ae9e"
    end
    on_intel do
      url "https://console.smedja.app/dl/39ecf5799800847d7b1148f58bc5911cb090ba62/smedja-linux-amd64.tar.gz"
      sha256 "f4ada7c04dabc309605aa7fe097a17acb294542bfffbeb0ba70b413d36c29286"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
