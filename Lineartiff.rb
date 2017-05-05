class Lineartiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-lineartiff"
  url "https://github.com/tomkyle/negatives-lineartiff/archive/1.0.4.tar.gz"
  sha256 "6d866a07814449c3e8cb49c7da88c0a175227996cedc6a0631181c3dcb491d26"

  bottle :unneeded

  depends_on "dcraw"
  depends_on "imagemagick"
  depends_on "parallel"
  depends_on "tomkyle/negatives/color-profiles"

  def install
    bin.install "lineartiff"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "lineartiff -a [OPTIONS]" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "lineartiff \-a \[OPTIONS\]", shell_output("#{bin}/lineartiff", 1)
  end
end
