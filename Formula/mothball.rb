class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.3/mothball-0.1.3-macos-universal"
    sha256 "11b872b1e1e39827eb6dd1ce02f8be2514f31024be9a5efcc90d6dfea4e5adba"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.3/mothball-0.1.3-linux-amd64"
      sha256 "d44eab2bc272fd2e9736da2355b87e686116929162f9b711e9a7b42a41098aa2"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.3/mothball-0.1.3-linux-arm64"
      sha256 "3abc3b9bcd96d5907546f96541d0a6cbbb21f40271a2ab0953ff8cfe86588aae"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
