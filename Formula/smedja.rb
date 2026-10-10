# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1053"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8187f018f43abde050d863d8f4ee3f3462d32fcb/smedja-darwin-arm64.tar.gz"
      sha256 "2ee85da7ff1c0dd744e7324e7da94994f3897d761efcc3428a614f3686287c03"
    end
    on_intel do
      url "https://console.smedja.app/dl/8187f018f43abde050d863d8f4ee3f3462d32fcb/smedja-darwin-amd64.tar.gz"
      sha256 "bc2b3730a74a0bf9b507483777001ebb44ebffb558e51fb6ceb81fca6e2d3d38"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8187f018f43abde050d863d8f4ee3f3462d32fcb/smedja-linux-arm64.tar.gz"
      sha256 "084b8b6b958dd3a399ad630bb6765fd9396321d86e7dc7b387f48a53fe4367d1"
    end
    on_intel do
      url "https://console.smedja.app/dl/8187f018f43abde050d863d8f4ee3f3462d32fcb/smedja-linux-amd64.tar.gz"
      sha256 "213e6085e80e2e3b5f42ba81409180a175571e72e384fe07726be0346611203a"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
