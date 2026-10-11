# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1116"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d916476b96e95f4106f940dd0f4d3ceb79e08aa6/smedja-darwin-arm64.tar.gz"
      sha256 "521304db19b77cec581ec892fe47b9e7d4bc400f0194f3b864cc07adf98fd201"
    end
    on_intel do
      url "https://console.smedja.app/dl/d916476b96e95f4106f940dd0f4d3ceb79e08aa6/smedja-darwin-amd64.tar.gz"
      sha256 "dfec69435bcc7c973add3de8613dc1f699fd09b18ea7f48a590c04ef410fd4aa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d916476b96e95f4106f940dd0f4d3ceb79e08aa6/smedja-linux-arm64.tar.gz"
      sha256 "3b523822faba20da01e74538a3bccd8725b937d12f6a59ef40c20362600946ee"
    end
    on_intel do
      url "https://console.smedja.app/dl/d916476b96e95f4106f940dd0f4d3ceb79e08aa6/smedja-linux-amd64.tar.gz"
      sha256 "8ca424512bf911be0e6fd8d27ebbd8473bd832c5d5e7abe5759efb2e573ef624"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
