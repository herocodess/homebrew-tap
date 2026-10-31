class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.1/mothball-0.1.1-macos-universal"
    sha256 "679e62a2d3d7a65a250d20722c5cf2a4203c46531188600018e589e7bb53fd18"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.1/mothball-0.1.1-linux-amd64"
      sha256 "e2cc5b414060c55c1ebea1b23034d8fc04017c9bd0fe1be3421460518e277c91"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.1/mothball-0.1.1-linux-arm64"
      sha256 "77b8c846bef6f5c75fea2fc5d26b99445a176846b66c2e96bebb370305a2712b"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
