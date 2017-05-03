class Iccprofiles < Formula
	desc "ICC profiles for linear TIFF and digital film negative handling"
	homepage "https://github.com/tomkyle/negatives-iccprofiles"
	url "https://github.com/tomkyle/negatives-iccprofiles/archive/1.1.1.tar.gz"
	sha256 "cb6bf1cd3c39dfe925e0b00254b7d19d04a679775db391e5ef8fb81d86d935d5"

	# Redundant since version taken from archive link above.
	# version "1.1.1"

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
