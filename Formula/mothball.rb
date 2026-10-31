class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.2/mothball-0.1.2-macos-universal"
    sha256 "21b16eda8e41573f0c1125006418f57091e6d10c77a27613be00e9a97a5fc5b5"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.2/mothball-0.1.2-linux-amd64"
      sha256 "1ca281d5be2b2943ebd39d8e6643d8d4f7b23260bb3f7faf5b66d61b6fc273f1"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.2/mothball-0.1.2-linux-arm64"
      sha256 "c4f37d75ff96b26ca4bcad4a0c483377d53a853c929d87fd81b8420b3169be75"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
