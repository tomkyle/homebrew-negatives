class Iccprofiles < Formula
	desc "ICC profiles for linear TIFF and digital film negative handling"
	homepage "https://github.com/tomkyle/negatives-iccprofiles"
	url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.1.2.tar.gz"
	sha256 "181287e811871eec276c0aaebc31f032c666337efd2aaf03b8eeb46411dc22cc"

	# Redundant since version taken from archive link above.
	# version "1.1.2"

	bottle :unneeded

	depends_on "little-cms2"

	def install
		bin.install "iccprofiles"
		prefix.install "profiles"
		prefix.install "USAGE.txt"
		prefix.install "CREDITS.txt"
		prefix.install "LICENSE.txt"
	end
end
