class YeOldeTodos < Formula
  desc "Tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v1.1.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "1.1.0"
  sha256 "829ece075173e5a441f2ef6c04410958e28360843720c819bb64761a73162efe"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end