class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.10"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.10/usage-v0.1.10-aarch64-apple-darwin.tar.gz"
    sha256 "ad9460fa12413caebe39c88ea170e5db8e62a7357b6ea50396a3b1ccd272b41a"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.10/usage-v0.1.10-x86_64-apple-darwin.tar.gz"
    sha256 "81317cd65486ddcb264cb2049d3999eb56ba5bc6f030fcffe04a0de3ba0a8f80"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
