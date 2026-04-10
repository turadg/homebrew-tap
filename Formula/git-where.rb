class GitWhere < Formula
  desc "Git extension for navigating repos and worktrees with frecency-ranked fuzzy selection"
  homepage "https://github.com/turadg/git-where"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-aarch64-apple-darwin.tar.gz"
      sha256 "036922c85eaf6ff3cc0b4ba7143a9df9ea12899721d0f24576d8ac2c651b24a3"
    else
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-x86_64-apple-darwin.tar.gz"
      sha256 "ca615d1a8877a6e3375f0cf1fdfad8dcea937984643f966f5bca0f8d177e8fa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1783575330625bdabb0591022032c0635f6aa377dcbfc73deb04ca1873cf7c0d"
    else
      url "https://github.com/turadg/git-where/releases/download/v#{version}/git-where-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40d01f2b8ffc2b9ff330a2c60f4fea4c19aa06ee7efa7edb93c5b83eba13c5ab"
    end
  end

  def install
    bin.install "git-where"
  end

  test do
    assert_match "git-where", shell_output("#{bin}/git-where --version 2>&1", 2)
  end
end
