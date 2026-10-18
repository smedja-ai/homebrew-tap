# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1393"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/f7de930dcdf38c88aa8b4e828bc7b0c4912527c8/smedja-darwin-arm64.tar.gz"
      sha256 "2ce02a12c380a9c955f1b03992e59dd0eed229bb4237c31fc5a0ad46d7d68b68"
    end
    on_intel do
      url "https://console.smedja.app/dl/f7de930dcdf38c88aa8b4e828bc7b0c4912527c8/smedja-darwin-amd64.tar.gz"
      sha256 "a5eec44739ed52310d8c5aa0bce246f62fd455e190485040f15e14504da98d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/f7de930dcdf38c88aa8b4e828bc7b0c4912527c8/smedja-linux-arm64.tar.gz"
      sha256 "92c8efe89b620bfc8d77ec0a513bfc67f8451747d210c99cad826a99e80ce7a6"
    end
    on_intel do
      url "https://console.smedja.app/dl/f7de930dcdf38c88aa8b4e828bc7b0c4912527c8/smedja-linux-amd64.tar.gz"
      sha256 "179ea1d11ebcbbc302a4ad8bc1e73baf6621c9bc57e79acbe9e50564eaec3625"
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
