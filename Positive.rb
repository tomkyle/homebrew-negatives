class Positive < Formula
  desc "Convert film negative TIFFs to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.0.5.tar.gz"
  sha256 "507d395b6ea66f4bad68bff01456f9dc613ed097111f78c52e5a43e4d1eb2fd5"

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
