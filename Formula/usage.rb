class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  url "https://github.com/alphadoiy/usage/releases/download/v0.1.11/usage-v0.1.11-aarch64-apple-darwin.tar.gz"
  sha256 "8a4d96d37204c13c1f73067bb384956ac5c427e1ccee547396a99a3977a19844"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
