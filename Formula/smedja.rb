# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1310"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c16018c1e2052b2115b083cd36164ff561c283d1/smedja-darwin-arm64.tar.gz"
      sha256 "03bc25febb9ef631e4db3e1883d85d71d0f8949cb9f649ca67899c1f770d3c69"
    end
    on_intel do
      url "https://console.smedja.app/dl/c16018c1e2052b2115b083cd36164ff561c283d1/smedja-darwin-amd64.tar.gz"
      sha256 "5704dfc246a49277c37eb65693872dd54f9f83046ffc3ede93f14bcffdfb28d8"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c16018c1e2052b2115b083cd36164ff561c283d1/smedja-linux-arm64.tar.gz"
      sha256 "0cf03f574c98be4feb88db9267e0108c7c7271f5aca692df66203ffc1d2fb857"
    end
    on_intel do
      url "https://console.smedja.app/dl/c16018c1e2052b2115b083cd36164ff561c283d1/smedja-linux-amd64.tar.gz"
      sha256 "18129b6272756c635ecc81bb60ade6f1b2a01f6e8c94ab0af118fb808f2bb2be"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
