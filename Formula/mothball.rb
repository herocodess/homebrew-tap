class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.6/mothball-0.1.6-macos-universal"
    sha256 "d58a30332a6c4edc549ffa6427f0fe5b7df7300d3136a1f042f9e1c7c78af077"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.6/mothball-0.1.6-linux-amd64"
      sha256 "ebd521b618343f63bd494e5d309825d046eb7c18e7e4a6ee072a9dc7853c397d"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.6/mothball-0.1.6-linux-arm64"
      sha256 "c50f94951d04c05bf25fb848d0db446489ae38edfaf5fd75e7ae44624c513645"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
