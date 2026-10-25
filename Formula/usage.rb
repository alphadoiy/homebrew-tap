class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.3"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.3/usage-v0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "6308a0a9896362ad5a2e450be3162e245560ca36ddb788de009850698a927e3d"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.3/usage-v0.1.3-x86_64-apple-darwin.tar.gz"
    sha256 "8ee77fac4a430580d5b9bbb9044c2cc99b8601b5da14f5ec5be4754e18213dc5"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
