# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tcdd < Formula
  desc "tcdd is useful cd command under tmux environment."
  homepage "https://github.com/hogelog/tcdd"
  url "https://github.com/hogelog/tcdd/archive/refs/tags/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "a060514047f4f7ff870a1ee9e61bfecb69dcc8ca"
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
