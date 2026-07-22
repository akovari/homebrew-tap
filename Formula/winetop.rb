class Winetop < Formula
  desc "htop for Wine prefixes"
  homepage "https://github.com/akovari/winetop"
  version "0.1.4"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cf04ad82853addf4e019c19edfb2795058dcc46add8553955ff534a7a434f9cd"
    end
    on_arm do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f77c374fb0b4b174ac65c4c3b300366b06cde489d458e95d49fa99a360d3e3b2"
    end
  end

  def install
    bin.install "winetop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/winetop --version")
  end
end
