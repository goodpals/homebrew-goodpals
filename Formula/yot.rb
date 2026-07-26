class Yot < Formula
  desc "Ye Olde Todos: tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "457fcb9930859a9f040ff7afa621d6f70191b2c0ebff25eebfc7ec7a168cab15"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "1.3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "cargo", "test"
  end
end
