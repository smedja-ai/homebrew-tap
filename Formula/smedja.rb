# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.833"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d61b8e28ef499c4424ba20304e2f24387fccc55c/smedja-darwin-arm64.tar.gz"
      sha256 "2becc581e876ad168c033289d4611320c0f9e756991f759cc6111ddea54ecfb6"
    end
    on_intel do
      url "https://console.smedja.app/dl/d61b8e28ef499c4424ba20304e2f24387fccc55c/smedja-darwin-amd64.tar.gz"
      sha256 "b0bac583e957affc3d1c4435611de4e3ad1cb4c640012a6f9495c39c3f32c603"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d61b8e28ef499c4424ba20304e2f24387fccc55c/smedja-linux-arm64.tar.gz"
      sha256 "226e5960fb6f1da65473c9e34722bde1db027173a8dff220a8582c20b3fa59b3"
    end
    on_intel do
      url "https://console.smedja.app/dl/d61b8e28ef499c4424ba20304e2f24387fccc55c/smedja-linux-amd64.tar.gz"
      sha256 "8c38bac44f4259721d13a36a3b87066f1b1a12203461147528c30283407ee29c"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
