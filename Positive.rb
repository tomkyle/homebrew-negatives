class Positive < Formula
  desc "Convert film negatives (TIFF files) to positives. Powered by GNU Parallel."
  homepage "https://github.com/tomkyle/negatives-positive"
  url "https://github.com/tomkyle/negatives-positive/archive/1.0.1.tar.gz"
  sha256 "5328dd948abd63479465d151da7822b3d240d7176ba4bff2ed6940189af940f3"

  # Redundant since version taken from archive link above.
  # version "1.0.1"

  bottle :unneeded

  depends_on "imagemagick" => [ "with-little-cms2", :recommended ]
  depends_on "parallel"
  depends_on "tomkyle/negatives/iccprofiles"

  def install
    bin.install "positive"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end
end
