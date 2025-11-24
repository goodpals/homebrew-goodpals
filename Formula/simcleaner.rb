class Simcleaner < Formula
  desc "CLI tool for cleaning ios simulator runtimes"
  homepage "https://github.com/goodpals/simcleaner"
  url "https://github.com/goodpals/simcleaner/archive/refs/tags/v0.1.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/simcleaner.git", branch: "main"
  version "0.1.0"
  sha256 "c793eab7018d59005a7679dd1dba8e6cab8660eb3189654909907c84ebf0b46a"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end