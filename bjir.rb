class Bjir < Formula
  desc "Bloat Judgement & I/O Refiner for prompts, logs, diffs, traces, and command output"
  homepage "https://github.com/gogetrekt/bjir"
  url "https://github.com/gogetrekt/bjir/archive/refs/tags/v0.1.40.tar.gz"
  sha256 "68fbd5c22407d949a88bb4d2fd506bcd33c7b20538059112254f3d3afaa70dfc"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/bjir-cli")
  end

  test do
    assert_match "bjir", shell_output("#{bin}/bjir --help")
  end
end