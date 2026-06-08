class Bjir < Formula
  desc "Bloat Judgement & I/O Refiner for prompts, logs, diffs, traces, and command output"
  homepage "https://github.com/gogetrekt/bjir"
  url "https://github.com/gogetrekt/bjir/archive/refs/tags/v0.1.38.tar.gz"
  sha256 "7360485e7f48ad9bf8eb45ab99dcbe654928cec34053cb33c8d836be09505383"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/bjir-cli")
  end

  test do
    system "#{bin}/bjir", "--help"
  end
end