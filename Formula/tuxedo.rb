class Tuxedo < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/webstonehq/tuxedo"
  version "2026.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7d6f3e7feb57f5ea7d0e667945f36b609a8e2afd7559359a0d781539c3f9e4c9"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bc66a1ebe196996cf361190850aa33a55d21aead792aa75371b9751330bf3225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e97e18962817243791e95b7052a4e5f17d5f9dd1736f98e2d11377017c16c60"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49583edca5f65fb6c02b82aab0fff829fe901ad4d4bb911589f30853c16a4b47"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
