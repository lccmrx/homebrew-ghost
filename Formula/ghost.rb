class ghost < Formula
  desc "Simple local DNS + proxy manager"
  homepage "https://github.com/lccmrx/ghost"
  url "https://github.com/lccmrx/ghost/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "7ce933815d8f7947906715c374f917b108e206d441b330205e77c1f728a9d5cc"
  license "Apache"

  depends_on "go" => :build

  def install
    system "go", "install", *std_go_args, "ghost.go"
  end
end
