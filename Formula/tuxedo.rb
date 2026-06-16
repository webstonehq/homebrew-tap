class Tuxedo < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/webstonehq/tuxedo"
  version "2026.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1a0db9f8454f99a3c67060fb7889264890ff04bfc8881d8ac17f2093f09e14a3"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2d798382a3bb50fea1cb472e95ffc791f739dba290d291e1551d4b3986d09166"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "689e7331cd0cdf6d42fbf0b60c07cfe8006b28a7f5dce8a6a6237d6d29da37e3"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80528e402857d835bb5dd5c8b3fe687c4342699efcaeae0120ac11b9f6bb0285"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
