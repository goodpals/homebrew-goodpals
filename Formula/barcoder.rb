class Barcoder < Formula
    desc "Simple CLI barcode generator"
    homepage "https://github.com/goodpals/barcoder"
    url "https://github.com/goodpals/barcoder/archive/refs/tags/v0.0.1.tar.gz"
    license "APGL-3.0"
    head "https://github.com/goodpals/barcoder.git", branch: "main"
    version "0.0.1"
    sha256 "e40f1210b880b26a90e9fab965790030d4e04f010676ed6c8bec05e9f9e4e4ee"

    depends_on "dart-sdk" => :build

    def install
        system "dart", "pub", "get"
        system "dart", "compile", "exe", "bin/barcoder.dart", "-o", "barcoder"
        bin.install "barcoder"
    end

    test do
        assert_match "barcoder #{version}", shell_output("#{bin}/barcoder --version").strip
    end
end