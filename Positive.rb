class Positive < Formula
  desc "Convert film negative TIFFs to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.0.6.tar.gz"
  sha256 "f6da0d27faf310c275d2f65ef98843a4e825e9e7f40afe71cbda9c987c8a6561"

  bottle :unneeded

  depends_on "imagemagick"
  depends_on "parallel"
  depends_on "tomkyle/negatives/color-profiles"

  def install
    bin.install "positive"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "positive -a [OPTIONS]" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "positive \-a \[OPTIONS\]", shell_output("#{bin}/positive", 1)
  end
end
