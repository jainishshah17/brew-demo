# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class ArtifactoryCli < Formula
  desc ""
  homepage ""
  url "https://bintray.com/artifact/download/jfrog/artifactory-cli-go/1.2.0/artifactory-cli-mac-386/art"
  sha256 "79f3084291a4d54cfbf72dc1bbd16e14097077aa52897ed9b4e6fcf448758776"

  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    bin.install "art"
    bin.install_symlink bin/"art"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test artifactory-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
