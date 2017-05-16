class LinearTiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-linear-tiff"
  url "https://github.com/tomkyle/negatives-linear-tiff/archive/1.1.0.tar.gz"
  sha256 "4e1a05d4680579604741b68f8c1d6113c481e05949b7a26ad2553bab9ba853d5"

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
    # Check if "linear-tiff --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "linear\-tiff \-\-help", shell_output("#{bin}/linear-tiff", 1)
  end
end
