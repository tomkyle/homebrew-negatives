class Iccprofiles < Formula
  desc "ICC profiles for linear and digital film negative TIFF handling"
  homepage "https://github.com/tomkyle/negatives-iccprofiles"
  url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.1.3.tar.gz"
  sha256 "380f90510fee6e824ba57771a5b0d6a9d7b9200f6c3a863f2f328f22160df53e"

  bottle :unneeded

  depends_on "little-cms2"

  def install
    bin.install "iccprofiles"
    prefix.install "profiles"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "iccprofiles [command]" is part of output
    # when called without parameters.
    # Expect exit code is 0 (subject to change).
    assert_match "iccprofiles \[command\]", shell_output("#{bin}/iccprofiles", 1)
  end
end
