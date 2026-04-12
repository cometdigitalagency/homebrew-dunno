class DunnoWorkflow < Formula
  desc "Declarative Claude Code agent team orchestration for iTerm2"
  homepage "https://github.com/cometdigitalagency/dunno-workflow"
  url "https://github.com/cometdigitalagency/dunno-workflow/archive/refs/tags/v0.3.6.tar.gz"
  sha256 "58f1b9af9c980c33f25da1974f37f33986d0f27976f35c9933b035f87f88fdc7"
  license "MIT"

  depends_on "yq"

  def install
    bin.install "bin/dunno-workflow"
    (share/"dunno-workflow/templates").install Dir["templates/*"]
  end

  test do
    assert_match "dunno-workflow v", shell_output("#{bin}/dunno-workflow version")
  end
end
