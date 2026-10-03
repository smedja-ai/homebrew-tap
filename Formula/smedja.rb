# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.854"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/167fdb266ec7c8ea4cbf11904301c6e7db4e9717/smedja-darwin-arm64.tar.gz"
      sha256 "a787f8425988412990c501bfcec5019ec23f5e418e704b4d49554a2c399fc8bd"
    end
    on_intel do
      url "https://console.smedja.app/dl/167fdb266ec7c8ea4cbf11904301c6e7db4e9717/smedja-darwin-amd64.tar.gz"
      sha256 "c6a7b98fd84d912d0c63108813dba5b764ffa1e8cb8a95360c10a908e96117b6"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/167fdb266ec7c8ea4cbf11904301c6e7db4e9717/smedja-linux-arm64.tar.gz"
      sha256 "879b464a8fba67b9922b97c4e9454e5365f95f7898a84295de101fffb829ff6c"
    end
    on_intel do
      url "https://console.smedja.app/dl/167fdb266ec7c8ea4cbf11904301c6e7db4e9717/smedja-linux-amd64.tar.gz"
      sha256 "b5ab5929aaa89eb6a621ff6ee6b71daa3376b39cf798e30385d50f4876e825a8"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
