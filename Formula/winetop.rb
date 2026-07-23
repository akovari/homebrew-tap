class Winetop < Formula
  desc "htop for Wine prefixes"
  homepage "https://github.com/akovari/winetop"
  version "0.2.0"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2e8e9347d689c92592934c4cba29cb5f56a0558b03221407156ef3338d1d15dd"
    end
    on_arm do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "7b211486f0331746607a277c1f5fc9c63f1e7222fa56f0647a9d0f25e46dcece"
    end
  end

  def install
    bin.install "winetop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/winetop --version")
  end
end
