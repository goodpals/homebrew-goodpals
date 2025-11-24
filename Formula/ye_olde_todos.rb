class YeOldeTodos < Formula
  desc "Tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v1.0.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "1.0.0"
  sha256 "ab5dbd3438d11f81588bcd3266d55a05736cd5bbb973c55623e4fec8a9d962b4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end