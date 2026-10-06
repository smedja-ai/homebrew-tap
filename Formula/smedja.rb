# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.964"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/65e37c9bf67b5bff02dda9ea2b9f7f693089a72f/smedja-darwin-arm64.tar.gz"
      sha256 "11d6bc5e40ad831a21b926377d7a259882b843a8954ef5d55650828ec272efdd"
    end
    on_intel do
      url "https://console.smedja.app/dl/65e37c9bf67b5bff02dda9ea2b9f7f693089a72f/smedja-darwin-amd64.tar.gz"
      sha256 "942475a0fa884d1e000c13ad3106f2456d0026852b4c2b82b1ece630b0e05ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/65e37c9bf67b5bff02dda9ea2b9f7f693089a72f/smedja-linux-arm64.tar.gz"
      sha256 "3adec5551e67cb5b1bda588a7f502d618a980b7bd20433f20524015f8ea5cbe8"
    end
    on_intel do
      url "https://console.smedja.app/dl/65e37c9bf67b5bff02dda9ea2b9f7f693089a72f/smedja-linux-amd64.tar.gz"
      sha256 "b6c6a4d8147cbb74544d141c00f12696259ddcaed4bf8837ce6580f500372850"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
