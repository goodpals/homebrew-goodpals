class YeOldeTodos < Formula
  desc "Tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v0.1.1.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "0.1.1"
  sha256 "3197d9d3ca43936344013f601de9e6702892382aefea434805b1db19c08f378b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end