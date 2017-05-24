class Positive < Formula
  desc "Convert film negative TIFFs to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.1.5.tar.gz"
  sha256 "cb66dc7f0fcfa5618b73a9078e8c03a4403b49c8ec722ab991689e8c0eb7fc1e"

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
