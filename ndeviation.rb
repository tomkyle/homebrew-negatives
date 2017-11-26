class Ndeviation < Formula
  desc "Calculates push/pull 'N' deviation for developed film densities."
  homepage "https://github.com/tomkyle/ndeviation"
  url "https://github.com/tomkyle/ndeviation/archive/1.0.0.tar.gz"
  sha256 "4ac06a36aff2f55eea3c0b32edc765d7b899975ddeee30120abe63515f5eb76d"

  bottle :unneeded


  depends_on :python

  def install
    bin.install "ndeviation"
    # prefix.install "USAGE"
    # prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "usage: ndeviation", shell_output("#{bin}/ndeviation", 1)
  end
end
