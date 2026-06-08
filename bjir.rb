class Bjir < Formula
  desc "Bloat Judgement & I/O Refiner"
  homepage "https://github.com/gogetrekt/bjir"
  url "https://github.com/gogetrekt/bjir/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a4cc6669319a2bb692f9ebd9e7c8ab5e914335cb22ce0d0f03baf690d75d8489"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/bjir-cli")
  end

  test do
    system "#{bin}/bjir", "--help"
  end
end