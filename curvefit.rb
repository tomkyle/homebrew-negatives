class Curvefit < Formula
  desc "Finds X/Y value for a given Y/X by polynomial interpolation."
  homepage "https://github.com/tomkyle/ndeviation"
  url "https://github.com/tomkyle/curvefit/archive/1.0.0.tar.gz"
  sha256 "be2d7225032ef736bc857823988b63cdb2e73185bbd3ec6d4e67beec4370a4e3"

  bottle :unneeded


  depends_on :python

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
