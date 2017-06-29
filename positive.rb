class Positive < Formula
  desc "Convert film negative TIFFs to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.1.8.tar.gz"
  sha256 "72a344e973315748d362a782d76a33c320041f9f9627e548be9f96c1470b6e99"

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
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "positive \-\-help", shell_output("#{bin}/positive", 1)
  end
end
