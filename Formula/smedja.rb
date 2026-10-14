# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1292"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/dc5564532bf6980ff8b36608ab1d8e05798d264c/smedja-darwin-arm64.tar.gz"
      sha256 "01541ec990f30989517455614a74bf9e13146db679daae12ff0300908c7d1981"
    end
    on_intel do
      url "https://console.smedja.app/dl/dc5564532bf6980ff8b36608ab1d8e05798d264c/smedja-darwin-amd64.tar.gz"
      sha256 "227dca6bc008bb389cb3a04eafa2e4910f9dbc28d5cc171f1d9ac0357b0ba0bb"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/dc5564532bf6980ff8b36608ab1d8e05798d264c/smedja-linux-arm64.tar.gz"
      sha256 "072e00ce89664f08f0f8f2f38f8d1fe91fd6a6ffe64d561ccb04eb60c821111b"
    end
    on_intel do
      url "https://console.smedja.app/dl/dc5564532bf6980ff8b36608ab1d8e05798d264c/smedja-linux-amd64.tar.gz"
      sha256 "e2539b4b0727dd34efaa331f5d1894e717ef2f04f68ebce946b2bd67dec39b72"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
