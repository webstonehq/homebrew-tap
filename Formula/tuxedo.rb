class Tuxedo < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/webstonehq/tuxedo"
  version "2026.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b939410e01e24b8c0c249df41eae17cb9b0d3032e93d3b0396c12bc17ffd0734"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "15cd6566ae0d3077fc32e5ba683cabd29cc6b7e6a223f6280d3c0dcfcb561bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c41b135eae7fe7db98ddbb7af47b29e11e6978896aa7d46b72d7dc41c92b2328"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "746c70496fd61053a0ef90046bacc891326beefead5b10ca7bf2d17e37eac0c6"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
