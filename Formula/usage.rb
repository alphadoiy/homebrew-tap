class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.7"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.7/usage-v0.1.7-aarch64-apple-darwin.tar.gz"
    sha256 "ac845ac4d1ec73275afe2cc28cd74f0e7878d5978bdb672f033fb81529418978"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.7/usage-v0.1.7-x86_64-apple-darwin.tar.gz"
    sha256 "5c62ab93d0436df7e7a0f35a03352f9ea9abfc64210ef1dfa5364b06155f3810"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
