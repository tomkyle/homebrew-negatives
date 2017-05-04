class Lineartiff < Formula
  desc "Converts RAW/NEF/CR2 files into linear TIFF files, using GNU Parallel for maximum speed. B/W grayscaling, resizing and ZIP compression."
  homepage "https://github.com/tomkyle/negatives-lineartiff"
  url "https://github.com/tomkyle/negatives-lineartiff/archive/1.0.1.tar.gz"
  sha256 "8021766276e1017efccdecbf2a1c0ed702d3811b2c01c8d9a31b79586c08be2e"

  # Redundant since version taken from archive link above.
  # version "1.0.1"

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
