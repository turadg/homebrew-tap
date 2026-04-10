class GitWhere < Formula
  desc "Git extension for navigating repos and worktrees with frecency-ranked fuzzy selection"
  homepage "https://github.com/turadg/git-where"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-aarch64-apple-darwin.tar.gz"
      sha256 "96d1f8e83d1e943c1f6efc462a71e262b8f3f63f5e08f62eb3b501441b5cb42c"
    else
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-x86_64-apple-darwin.tar.gz"
      sha256 "3acdd6321b9587ea3b934d7c5c49a30f5743918f9b0a8a4f12bcd2794108f661"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3282ce2e3cd381b1632677f67e4f9c69995adbc9ceb81707667ff234e2b3da46"
    else
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa7e04a0229126b897bfe1c4dadceeb5946b3e98f0aeddd914a28f86fa4ce4a7"
    end
  end

  def install
    bin.install "git-where"
  end

  test do
    assert_match "git-where", shell_output("#{bin}/git-where --version 2>&1", 2)
  end
end
