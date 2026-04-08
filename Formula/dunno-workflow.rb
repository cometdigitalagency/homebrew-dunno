class DunnoWorkflow < Formula
  desc "Declarative Claude Code agent team orchestration for iTerm2"
  homepage "https://github.com/cometdigitalagency/dunno-workflow"
  url "https://github.com/cometdigitalagency/dunno-workflow/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "84a0404e0d8d429d4b674bb7f04216f4c67052c33d40ce329fcfc47596e46eff"
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
