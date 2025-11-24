class YeOldeTodos < Formula
  desc "Tool for finding todo comments in code and sorting them by age"
  homepage "https://github.com/goodpals/ye_olde_todos"
  url "https://github.com/goodpals/ye_olde_todos/archive/refs/tags/v0.1.0.tar.gz"
  license "AGPL-3.0"
  head "https://github.com/goodpals/ye_olde_todos.git", branch: "main"
  version "0.1.0"
  sha256 "3eeae8529f91c19025336aabba86a6db7bcc8df5e25e7b7f3997d6900ad68eaf"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  # todo: test
end