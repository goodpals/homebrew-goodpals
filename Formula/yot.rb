class Yot < Formula
  desc "Ye Olde Todos: tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v1.2.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "1.2.0"
  sha256 "80d6dfa25088da88aa6c058f432ede7cdbaf27836dba3caa68f73cc1a16dae41"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def test
    system "cargo", "test"
  end
end