class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.2"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.2/usage-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "e8d49985d28a58891670bc72b91453ee6c4379520549198e916ff33ed0cdeba7"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.2/usage-v0.1.2-x86_64-apple-darwin.tar.gz"
    sha256 "18bdfd98aaca37f0dfd53f06a846f22510b03dd4fce4f62615a7c9654b93c5c4"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
