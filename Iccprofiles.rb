class Iccprofiles < Formula
  desc "ICC profiles for linear and digital film negative TIFF handling"
  homepage "https://github.com/tomkyle/negatives-iccprofiles"
  url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.1.4.tar.gz"
  sha256 "91e3c4353ced40702e72d62987c7bf500cdec4d905ab416b1a2fb29adfa5aa53"

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
