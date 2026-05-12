class Tuxedo < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/webstonehq/tuxedo"
  version "2026.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ad561a6236dd7a7cded1a18958e47b2ed437d6c277c80d3c40b9316c8fb2b90e"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9113aaf7d418fe46b1209541f94a7ecb9df224d355fe1cd08624d7e256b869cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3c5f34515d35ef3ac6d7b7dd6e50d5dd758963d5852658e429546bc288269d1"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4f29a2d174438ccf3d70fc9443da21244f3ae26aa050f2a27ffe42a17f413f8"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
