# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.848"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0137fb82fd73b110a8d14c7d5c44c70f59c61abd/smedja-darwin-arm64.tar.gz"
      sha256 "7848aab5ad1c257f180d7af60ca74c448c924c3299672e21d94da87052b0a982"
    end
    on_intel do
      url "https://console.smedja.app/dl/0137fb82fd73b110a8d14c7d5c44c70f59c61abd/smedja-darwin-amd64.tar.gz"
      sha256 "e6d3c4de321a6946d339260a98b5d3fd937915d7714dccf6ee8c2f2c36cfc0b3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0137fb82fd73b110a8d14c7d5c44c70f59c61abd/smedja-linux-arm64.tar.gz"
      sha256 "d6549026aaed8f8f86a5926a51cf71fd87f5fd63feba6737c92644468ae40fc5"
    end
    on_intel do
      url "https://console.smedja.app/dl/0137fb82fd73b110a8d14c7d5c44c70f59c61abd/smedja-linux-amd64.tar.gz"
      sha256 "b9ae3edd53311a03a1c88786fe5243dbda4e4123d117c83a7e42a66182337b11"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
