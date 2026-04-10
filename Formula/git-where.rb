class GitWhere < Formula
  desc "Git extension for navigating repos and worktrees with frecency-ranked fuzzy selection"
  homepage "https://github.com/turadg/git-where"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-aarch64-apple-darwin.tar.gz"
      sha256 "f87722e8cd5ee8b19e31b3e947a546485bb091094cc7911330ab250daf16a71c"
    else
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-x86_64-apple-darwin.tar.gz"
      sha256 "d28d64042e2cc667cc806d024fec7232cd938bc313ac4814aa65cbc075d99d34"
    end
  end

  def install
    bin.install "git-where"
  end

  test do
    assert_match "git-where", shell_output("#{bin}/git-where --version 2>&1", 2)
  end
end
