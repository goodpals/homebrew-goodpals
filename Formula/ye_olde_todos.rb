class YeOldeTodos < Formula
  desc "Tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye-olde-todos"
  url "https://github.com/goodpals/ye-olde-todos/archive/refs/tags/v0.1.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye-olde-todos.git", branch: "main"
  version "0.1.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end