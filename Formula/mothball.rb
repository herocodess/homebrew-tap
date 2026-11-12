class Mothball < Formula
  desc "Put idle projects away, get your disk back (command line)"
  homepage "https://github.com/herocodess/mothball"
  version "0.1.7"
  license "MIT"

  on_macos do
    url "https://github.com/herocodess/mothball/releases/download/v0.1.7/mothball-0.1.7-macos-universal"
    sha256 "205f1f27a52b84ac5cf19ef6e7fcdfbc8426023e5e126afad3f41c6c9a43e39f"
  end

  on_linux do
    on_intel do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.7/mothball-0.1.7-linux-amd64"
      sha256 "d9d8d131a1f6673573266af7dc927bbd80f8ed2b094ef5de98ddb662831da442"
    end
    on_arm do
      url "https://github.com/herocodess/mothball/releases/download/v0.1.7/mothball-0.1.7-linux-arm64"
      sha256 "4ca178f48fb7a7229e0f3b88f19132f3588d65a6f463a8ed4942a90a6eb2ca5b"
    end
  end

  def install
    bin.install Dir["mothball-*"].first => "mothball"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mothball version")
  end
end
