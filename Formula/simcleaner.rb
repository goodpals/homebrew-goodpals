class Simcleaner < Formula
  desc "CLI tool for cleaning ios simulator runtimes"
  homepage "https://github.com/goodpals/simcleaner"
  url "https://github.com/goodpals/simcleaner/archive/refs/tags/v0.2.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/simcleaner.git", branch: "main"
  version "0.2.0"
  sha256 "5f55a7c7a72e6fe2c909c86f59f774a47a274d30c23456cce88ccca226f47999"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end