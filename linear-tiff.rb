class LinearTiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-linear-tiff"
  url "https://github.com/tomkyle/negatives-linear-tiff/archive/1.1.7.tar.gz"
  sha256 "0a438a66fad6e2452fb5b9598da809d1d7916e73c11253b496edd392d28f3bbd"

  bottle :unneeded

  depends_on "libraw"
  depends_on "exiftool"
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
