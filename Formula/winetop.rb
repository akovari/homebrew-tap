class Winetop < Formula
  desc "htop for Wine prefixes"
  homepage "https://github.com/akovari/winetop"
  version "0.2.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "31af0880ef68e0702bb4f6fb6275665f618627af2599395f422dcbab8b0b8831"
    end
    on_arm do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6287eda36703a8e6c9ee8c836cc40756bdf581d7634eebccd2186e440da61dcd"
    end
  end

  def install
    bin.install "winetop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/winetop --version")
  end
end
