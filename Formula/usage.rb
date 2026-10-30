class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.6"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.6/usage-v0.1.6-aarch64-apple-darwin.tar.gz"
    sha256 "0025186371b9094b8a49149c3572b0ad72f564238c277238334587868a28d011"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.6/usage-v0.1.6-x86_64-apple-darwin.tar.gz"
    sha256 "d1b107b06f2ce623e9cde41e9520515a6223fe9fa74f8217f52ee611f0c6c2b1"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
