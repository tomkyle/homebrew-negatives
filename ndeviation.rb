class Ndeviation < Formula
  desc "Calculates push/pull 'N' deviation for developed film densities."
  homepage "https://github.com/filmspeed/ndeviation"
  url "https://github.com/filmspeed/ndeviation/archive/1.0.4.tar.gz"
  sha256 "baff18a1e57300f702ebc6014e2b90c962c77847ae56087ede41ff69059e75a0"

  bottle :unneeded


  depends_on :python
  depends_on "tomkyle/negatives/curvefit"

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
