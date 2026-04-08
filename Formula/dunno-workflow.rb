class DunnoWorkflow < Formula
  desc "Declarative Claude Code agent team orchestration for iTerm2"
  homepage "https://github.com/cometdigitalagency/dunno-workflow"
  url "https://github.com/cometdigitalagency/dunno-workflow/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "5847118f864766103676662a1ddbf960e512ee15904473b9deb52096eaae63d8"
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
