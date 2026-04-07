class DunnoWorkflow < Formula
  desc "Declarative Claude Code agent team orchestration for iTerm2"
  homepage "https://github.com/cometdigitalagency/dunno-workflow"
  url "https://github.com/cometdigitalagency/dunno-workflow/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "67071e30b24c7ec6a07c60423d8c6ac9f2ca0814901fab78f69c91d766b42b1f"
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
