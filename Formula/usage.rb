class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.5"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.5/usage-v0.1.5-aarch64-apple-darwin.tar.gz"
    sha256 "483cc67109069af2f5514e2aa88d41b93b63fcfa81fd62a99b0953efe816693f"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.5/usage-v0.1.5-x86_64-apple-darwin.tar.gz"
    sha256 "ae510e82aab8533d749087bd0d11e39dac883cb373bbae434322ae95f9ba9d21"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
