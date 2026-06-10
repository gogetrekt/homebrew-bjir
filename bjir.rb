class Bjir < Formula
  desc "Bloat Judgement & I/O Refiner for prompts, logs, diffs, traces, and command output"
  homepage "https://github.com/gogetrekt/bjir"
  url "https://github.com/gogetrekt/bjir/archive/refs/tags/v0.1.39.tar.gz"
  sha256 "dcef12ad8078c6ff9b7c5ad98a605a76f203a0b93574b75bb97d7e4dd182cc1e"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/bjir-cli")
  end

  test do
    assert_match "bjir", shell_output("#{bin}/bjir --help")
  end
end