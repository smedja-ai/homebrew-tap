# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1405"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/aeb84c748aa5632dccb32a283bd4b401e710fe98/smedja-darwin-arm64.tar.gz"
      sha256 "da521f316dc1c6fc410a57aa117caa49006c12e860254227dbc2458d9b7734e9"
    end
    on_intel do
      url "https://console.smedja.app/dl/aeb84c748aa5632dccb32a283bd4b401e710fe98/smedja-darwin-amd64.tar.gz"
      sha256 "64a76d2303c9f6a2e21d90609252c7142d918c8567053be79991a55f09a1c43a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/aeb84c748aa5632dccb32a283bd4b401e710fe98/smedja-linux-arm64.tar.gz"
      sha256 "a3212a5876e6a616a6dd98cbe9df2547760f2484e4d12a1ad90ea8fd43033893"
    end
    on_intel do
      url "https://console.smedja.app/dl/aeb84c748aa5632dccb32a283bd4b401e710fe98/smedja-linux-amd64.tar.gz"
      sha256 "61957ecd2b48101e954748c530dc664090114abec9c83527589292e9a23178e9"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
