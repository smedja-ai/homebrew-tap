# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1206"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/e784b52505e8037409150ecb40406cdcaa506d42/smedja-darwin-arm64.tar.gz"
      sha256 "c473a79a49baebe1ddbb7b3786359de9f237850fe7e87f06224934b2f92710ce"
    end
    on_intel do
      url "https://console.smedja.app/dl/e784b52505e8037409150ecb40406cdcaa506d42/smedja-darwin-amd64.tar.gz"
      sha256 "fcc9fcae6b4af3700cfecab5d36df3e217bafd39298b73fe0f55dd822914aac3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/e784b52505e8037409150ecb40406cdcaa506d42/smedja-linux-arm64.tar.gz"
      sha256 "59c48574f3d0923b22537e1e2978957b6323bd58af32260fe37421d58a68e2e4"
    end
    on_intel do
      url "https://console.smedja.app/dl/e784b52505e8037409150ecb40406cdcaa506d42/smedja-linux-amd64.tar.gz"
      sha256 "47e0693a78dfc6f816300a8937471002fc38ace5bf67070d2a249078f7e5b6e1"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
