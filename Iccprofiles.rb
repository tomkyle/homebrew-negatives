class Iccprofiles < Formula
	desc "ICC profiles for linear TIFF and film negative handling"
	homepage "https://github.com/tomkyle/negatives-iccprofiles"
	url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.1.0.tar.gz"
	sha256 "f54db7b32491eb09651de09a1af4bc29fcafca8259228eb4362d3dec8e5c93e3"

	# Redundant since version taken from archive link above.
	# version "1.1.0"

	bottle :unneeded

	depends_on "little-cms2"

	def install
		bin.install "iccprofiles"
		prefix.install Dir["profiles"]
	end
end
