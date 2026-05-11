class Tuxedo < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/webstonehq/tuxedo"
  version "2026.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cd8584788ba24bb9cc849c3fb5cb793f1a3bf38843a1ec461d95a505bc7fd69d"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6e66966e81b601f9938a6b401b5d194e77f47d2accaac0af8a58d8dbc6c466c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b23fe97cdca918b7e66028cbaa3ce54ad901cffcf012e0a8aa785fdd50c7af3"
    end
    on_intel do
      url "https://github.com/webstonehq/tuxedo/releases/download/v#{version}/tuxedo-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f3e0cd4a2bf8ce28405033c2f8cb204eac9b40a14908b937a9fb12b3b54744a"
    end
  end

  def install
    bin.install "tuxedo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuxedo --version")
  end
end
