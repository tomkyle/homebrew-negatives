class Iccprofiles < Formula
  desc "ICC profiles for linear TIFF and film negative handling"
  homepage "https://github.com/tomkyle/negatives-iccprofiles"
  url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.0.0.tar.gz"
  sha256 "7511e823bfbca201b1aa84dc5092d78758443802c87bf759638f5c8b406d44b7"

  # Redundant since version taken from archive link above.
  # version "1.0.4"

  bottle :unneeded

  depends_on "little-cms2"

  def install
    bin.install "iccprofiles"
    prefix.install Dir["profiles"]
  end
end
