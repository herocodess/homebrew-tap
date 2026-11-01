class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.4/mothball-0.1.4-macos-universal"
    sha256 "967bb38931923f56995fbf19ee6b8c0ceaf1c38e1e12e559c8438c291146b3dd"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.4/mothball-0.1.4-linux-amd64"
      sha256 "73cb34bdc71e9211d3329fefd5ae79d11baefa1e5f59ce912b63f2f9501e6673"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.4/mothball-0.1.4-linux-arm64"
      sha256 "b7db3a46740775fb2103821d1075be29e419d800a233003a383e7247fa49dbfd"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
