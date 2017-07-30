class LinearTiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-linear-tiff"
  url "https://github.com/tomkyle/negatives-linear-tiff/archive/1.1.6.tar.gz"
  sha256 "381ab311ad6ac757fcbe07669663e97ef2915e57899915361031e581a99fd2a2"

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
