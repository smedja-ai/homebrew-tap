# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.825"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6dc28bcce31cee01c92a4613ae8dfba2e52d41e0/smedja-darwin-arm64.tar.gz"
      sha256 "a8740a5d1a68a4c0b659f3258ae45db3a88bf61e804a9965d917075bc180c791"
    end
    on_intel do
      url "https://console.smedja.app/dl/6dc28bcce31cee01c92a4613ae8dfba2e52d41e0/smedja-darwin-amd64.tar.gz"
      sha256 "c7060af0517741c0adb592b469192360d86bbd9a4b262495f76235f366d36e2c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6dc28bcce31cee01c92a4613ae8dfba2e52d41e0/smedja-linux-arm64.tar.gz"
      sha256 "bcdc66d04b15b8ccca691900486f3557b2e3f4e3dead0ccdbeb759b5daf2f326"
    end
    on_intel do
      url "https://console.smedja.app/dl/6dc28bcce31cee01c92a4613ae8dfba2e52d41e0/smedja-linux-amd64.tar.gz"
      sha256 "996b03487f6e26179b3f29259f577b88715e19d82e3928a2b761608fbf4a4a3f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
