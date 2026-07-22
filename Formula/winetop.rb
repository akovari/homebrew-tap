class Winetop < Formula
  desc "htop for Wine prefixes"
  homepage "https://github.com/akovari/winetop"
  version "0.1.2"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "254ec262e94e9456768a7f098ecd1a3168136e3c9dcb05b63b7384c20a279154"
    end
    on_arm do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "54e064f14a7d6ca0583e669f7a70734ffbb6421713ba5f7ab41352d486489a17"
    end
  end

  def install
    bin.install "winetop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/winetop --version")
  end
end
