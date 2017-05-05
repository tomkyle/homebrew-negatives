class Positive < Formula
  desc "Convert film negative TIFFs to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.0.3.tar.gz"
  sha256 "5688122020571f37da68d0b2effc4c0d71b28bd2aa3ea3735d9ed9f196bcfafb"

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
