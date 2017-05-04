class Lineartiff < Formula
  desc "Convert Raw photos to Linear TIFF: dcraw combined with GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-lineartiff"
  url "https://github.com/tomkyle/negatives-lineartiff/archive/1.0.2.tar.gz"
  sha256 "01c98bb41e0a0ba26aa927ea49fc08f5e5793ff9fe043da42260c30a7cd61dfb"

  bottle :unneeded

  depends_on "dcraw"
  depends_on "imagemagick"
  depends_on "parallel"
  depends_on "tomkyle/negatives/iccprofiles"

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
