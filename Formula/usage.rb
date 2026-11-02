class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.8"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.8/usage-v0.1.8-aarch64-apple-darwin.tar.gz"
    sha256 "ce269cb332fd05ee7d70bbb612d3b868e5cbe326208645dcbe69ba6ddc2dc890"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.8/usage-v0.1.8-x86_64-apple-darwin.tar.gz"
    sha256 "3dc4e986ba3aabb78b712c634c0eda5cfb80f47d59ceb1d646ba670db0b23045"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
