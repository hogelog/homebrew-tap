# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tcdd < Formula
  desc "tcdd is useful cd command under tmux environment."
  homepage "https://github.com/hogelog/tcdd"
  url "https://github.com/hogelog/tcdd/archive/refs/tags/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "b13cd5cc4ae55732ee595eb2662f4748cb4294dc569873f3405b8c21df28d00f"
  license "MIT"

  depends_on "bash"
  depends_on "tmux"

  def install
    bin.install "tcdd"
  end

  def post_install
    puts <<~EOM
      # Run follwing command to load tcdd in your shell

      echo 'eval $(tcdd init)' >> ~/.bash_profile
    EOM
  end
end
