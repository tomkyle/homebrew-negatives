class Lineartiff < Formula
  desc "Converts RAW/NEF/CR2 files into linear TIFF files, using GNU Parallel for maximum speed."
  homepage "https://github.com/tomkyle/negatives-lineartiff"
  url "https://github.com/tomkyle/negatives-lineartiff/archive/1.0.0.tar.gz"
  sha256 "55c508ad2a7844e64145e751c18498b1de0415489ead6127f51d878829883e87"

  # Redundant since version taken from archive link above.
  # version "1.0.0"

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
end
