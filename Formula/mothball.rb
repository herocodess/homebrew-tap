class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.0/mothball-0.1.0-macos-universal"
    sha256 "7f38c4e7a53d6d20ec548ea5581b49206fd75798c0394df01fd64d131eb662dc"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.0/mothball-0.1.0-linux-amd64"
      sha256 "99068c06e5d50cb921813dd6ac6e104669b4f0405806ab4283783b78aa21a7d2"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.0/mothball-0.1.0-linux-arm64"
      sha256 "a8168646928a313b6198e82858c6254edd7da0766a4dcd2a00627ac51f240d98"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
