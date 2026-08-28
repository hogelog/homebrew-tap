class Mdv < Formula
  desc "Local Markdown viewer"
  homepage "https://github.com/hogelog/mdv"
  url "https://github.com/hogelog/mdv/archive/refs/tags/0.1.0.tar.gz"
  sha256 "4e88bf74b982401fc98458ab975a4a45588006111eeaf1a9dc1c1e5de3052349"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "mdv #{version}", shell_output("#{bin}/mdv --version")
  end
end
