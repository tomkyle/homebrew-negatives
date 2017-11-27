class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/tomkyle/ndeviation"
  url "https://github.com/tomkyle/curvefit/archive/1.0.1.tar.gz"
  sha256 "ccc6a07ed3a0ac6988c8e370bec794b0adbf6d2c764e1781da6da49d57f4605f"

  bottle :unneeded


  depends_on :python
  depends_on "numpy"
  depends_on "matplotlib"

  def install
    bin.install "curvefit"
    # prefix.install "USAGE"
    # prefix.install "CREDITS"
    prefix.install "LICENSE"
  end

  test do
    # Check if "positive --help" is part of output
    # when called without parameters.
    # Expected exit code is 1.
    assert_match "usage: curvefit", shell_output("#{bin}/curvefit", 1)
  end
end
