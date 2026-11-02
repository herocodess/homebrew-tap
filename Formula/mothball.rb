class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.5/mothball-0.1.5-macos-universal"
    sha256 "9ecf2ec9af4cb86983a445bd549a336422230e91072ea5ffe079d650e7bdec6a"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.5/mothball-0.1.5-linux-amd64"
      sha256 "99a7e69d5cfb6ec809b3c2a299b65674460195d152761e47f9b599764bce2872"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.5/mothball-0.1.5-linux-arm64"
      sha256 "a21e9ceea877e05fb5480baf4889bc1bfdd336c10c4c9a376f0a21c3f3922575"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
