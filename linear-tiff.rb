class LinearTiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-linear-tiff"
  url "https://github.com/tomkyle/negatives-linear-tiff/archive/1.0.6.tar.gz"
  sha256 "d69960806925e8f960fd590cdabb12f10893f02cd895ef275a9cceda6c854ce6"

  bottle :unneeded

  depends_on "dcraw"
  depends_on "imagemagick"
  depends_on "parallel"
  depends_on "tomkyle/negatives/color-profiles"

  def install
    bin.install "linear-tiff"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "linear-tiff -a [OPTIONS]" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "linear\-tiff \-a \[OPTIONS\]", shell_output("#{bin}/linear-tiff", 1)
  end
end
