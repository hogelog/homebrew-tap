# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tcdd < Formula
  desc "tcdd is useful cd command under tmux environment."
  homepage "https://github.com/hogelog/tcdd"
  url "https://github.com/hogelog/tcdd/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "5586f20485d0c4e149152fa7c4cb4f60dda1de916b1ec6847cd54b9740cb7962"
  license "MIT"

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
