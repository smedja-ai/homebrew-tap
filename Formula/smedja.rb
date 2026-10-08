# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1012"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/1ad4f4f97d3f8ce2becf4f4a4dd2913cfc259a56/smedja-darwin-arm64.tar.gz"
      sha256 "9a1c8b3789a3a749520b49321125866da3f376d3cc59e0923db9d0983d451f12"
    end
    on_intel do
      url "https://console.smedja.app/dl/1ad4f4f97d3f8ce2becf4f4a4dd2913cfc259a56/smedja-darwin-amd64.tar.gz"
      sha256 "47929d2a7c45d2579c43c1c1ccd220608d15d9f54cf0d15e712bdc2a80a92649"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/1ad4f4f97d3f8ce2becf4f4a4dd2913cfc259a56/smedja-linux-arm64.tar.gz"
      sha256 "70ee61d6b758c452fe4a7c1e76881b67da049d5af6d69561fe48a66b13f37c06"
    end
    on_intel do
      url "https://console.smedja.app/dl/1ad4f4f97d3f8ce2becf4f4a4dd2913cfc259a56/smedja-linux-amd64.tar.gz"
      sha256 "91193bbe4554e0d1bdd0f33de9e3f92923db50982113cf02e1ee25f15d084423"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
