class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/tomkyle/ndeviation"
  url "https://github.com/tomkyle/curvefit/archive/1.0.2.tar.gz"
  sha256 "83dc652840bac0975a61e1b2d9f9bb8040b863fcc993adcae6e6510357d69f58"

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
