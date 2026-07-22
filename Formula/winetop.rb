class Winetop < Formula
  desc "htop for Wine prefixes"
  homepage "https://github.com/akovari/winetop"
  version "0.1.1"
  license "MIT"

  on_linux do
    on_intel do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "46c08d6ad6d91f43204d277b1faddb76e1e502a735817a4fb5b4a9671f370ab6"
    end
    on_arm do
      url "https://github.com/akovari/winetop/releases/download/v#{version}/winetop-v#{version}-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "ea26db0f11f4b321b6e55a4a58d7f752b932a89cf4843e7a4cf3ad3df92e2dda"
    end
  end

  def install
    bin.install "winetop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/winetop --version")
  end
end
