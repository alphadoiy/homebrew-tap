class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.1"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.1/usage-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "8d99b34d713d4c4b549035fabc62492c705f737c86046c23a4a16cbd046b7145"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.1/usage-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "590822e2e299a25e633dd53a4190f0421ee907514281ea4f00e661fe8cb7acb3"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
