# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1101"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/22799e086936e65c376e45c41c27721f323a7f84/smedja-darwin-arm64.tar.gz"
      sha256 "25a2e65cd34ccb01d37f4c3fbaeb6fe9bd1b908ae9adfe060593e351b074f6d0"
    end
    on_intel do
      url "https://console.smedja.app/dl/22799e086936e65c376e45c41c27721f323a7f84/smedja-darwin-amd64.tar.gz"
      sha256 "90c0a6ea2e8d05b73fb7df4a6426c2ca3ff749834d8089a133cdba9cda2a6143"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/22799e086936e65c376e45c41c27721f323a7f84/smedja-linux-arm64.tar.gz"
      sha256 "3ba799c3f56f83fef0fa58f3746b3fab2543e03d5bec45108e96177d60d7ff37"
    end
    on_intel do
      url "https://console.smedja.app/dl/22799e086936e65c376e45c41c27721f323a7f84/smedja-linux-amd64.tar.gz"
      sha256 "b0400530cf2d008f34100994fec2b5d3e18ae494a3e1fe2b36d8ce9adde2e35f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
