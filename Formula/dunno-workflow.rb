class DunnoWorkflow < Formula
  desc "Declarative Claude Code agent team orchestration for iTerm2"
  homepage "https://github.com/cometdigitalagency/dunno-workflow"
  url "https://github.com/cometdigitalagency/dunno-workflow/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "5cf8dea2c1f1cde0fb062b6397afd61c31ea1c31731830a8faa82fe8709ec6f8"
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
