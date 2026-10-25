class Usage < Formula
  desc "Terminal dashboard for AI agent usage, providers, and sessions"
  homepage "https://github.com/alphadoiy/usage"
  version "0.1.4"

  depends_on macos: :sequoia
  conflicts_with "usage-local", because: "both install the usage command"

  on_arm do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.4/usage-v0.1.4-aarch64-apple-darwin.tar.gz"
    sha256 "2a5652f7e6c41bbe079d11c235339ac701f18f86fa781924b0d1ad2eb68ed17c"
  end
  on_intel do
    url "https://github.com/alphadoiy/usage/releases/download/v0.1.4/usage-v0.1.4-x86_64-apple-darwin.tar.gz"
    sha256 "605b65c5b661f56487db1544c8a694d59dc57bbe8dddc843b7079b81793f93a4"
  end

  def install
    bin.install "usage"
  end

  test do
    assert_match "usage", shell_output("#{bin}/usage --help")
  end
end
