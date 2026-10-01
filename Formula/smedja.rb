# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.804"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/530ae8f4e6dd16ae256344069ad183a52b829ce2/smedja-darwin-arm64.tar.gz"
      sha256 "99d510a6b4d573bf2a60954276e6fce424e021d7244c7b4729b9923fb4e3c50e"
    end
    on_intel do
      url "https://console.smedja.app/dl/530ae8f4e6dd16ae256344069ad183a52b829ce2/smedja-darwin-amd64.tar.gz"
      sha256 "fcf852d925257eb475c998cdfbc7def7b9d3669ddb94e8fef893740f28950eaa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/530ae8f4e6dd16ae256344069ad183a52b829ce2/smedja-linux-arm64.tar.gz"
      sha256 "e6d6e85ff6a53ac115ba16e44f64bf8a6fa5747abacc6a7c7565e1c57af5f2f7"
    end
    on_intel do
      url "https://console.smedja.app/dl/530ae8f4e6dd16ae256344069ad183a52b829ce2/smedja-linux-amd64.tar.gz"
      sha256 "577c5efda2c67681b43cee14fd6cb13644491581359165c16d9db6cbda48545e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
