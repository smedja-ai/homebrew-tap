# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1023"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/93f787c65dd62fa0c220dec907bfd57a670c2e65/smedja-darwin-arm64.tar.gz"
      sha256 "1cb3fbebae1ddfe07e131fa49a428a00805cda6983946ad665913e1ec394a4ae"
    end
    on_intel do
      url "https://console.smedja.app/dl/93f787c65dd62fa0c220dec907bfd57a670c2e65/smedja-darwin-amd64.tar.gz"
      sha256 "e3d57c1a5a5fda9e71fbef3c840682e62a4c54155c58bb294527049eda3dc4b4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/93f787c65dd62fa0c220dec907bfd57a670c2e65/smedja-linux-arm64.tar.gz"
      sha256 "ae6a087ba32be8e54902c83c8c681a2e9adfea9ec41198d7fdc0ec229447c1d5"
    end
    on_intel do
      url "https://console.smedja.app/dl/93f787c65dd62fa0c220dec907bfd57a670c2e65/smedja-linux-amd64.tar.gz"
      sha256 "ee5ade49d8ccb25ef9f07d639fa08158b03cc6a16ddd0a73e769c9ce91cf417f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
