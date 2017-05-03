class Positive < Formula
  desc "Convert digital film negatives (TIFF files) to positive images, using GNU Parallel for maximum speed."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.0.0.tar.gz"
  sha256 "bda3347fe818fa6d7aa69bc89ab9531141de9d3a8c79eae8f087525ef3f683f9"

  # Redundant since version taken from archive link above.
  # version "1.0.0"

  bottle :unneeded

  depends_on "tomkyle/negatives/iccprofiles"

  def install
    bin.install "positive"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end
end
