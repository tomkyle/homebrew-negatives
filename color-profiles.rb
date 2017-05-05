class ColorProfiles < Formula
  desc "Color profiles for linear and digital film negative TIFF handling"
  homepage "https://github.com/tomkyle/negatives-color-profiles"
  url "https://github.com/tomkyle/negatives-color-profiles/archive/1.2.1.tar.gz"
  sha256 "d5c1684e60693424f81dd96cc90467a6ddee12ab59dc5cdc2ce673a827f52bd4"

  bottle :unneeded

  depends_on "little-cms2"

  def install
    bin.install "color-profiles"
    prefix.install "profiles"
    prefix.install "USAGE"
    prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "color-profiles [command]" is part of output
    # when called without parameters.
    # Expect exit code is 0 (subject to change).
    assert_match "color\-profiles \[command\]", shell_output("#{bin}/color-profiles", 1)
  end
end
