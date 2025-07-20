class Makemcp < Formula
  desc "Transform APIs into MCP servers for AI agents"
  homepage "https://github.com/T4cceptor/MakeMCP"
  head "https://github.com/T4cceptor/MakeMCP.git", branch: "main"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/makemcp.go"
  end

  test do
    assert_match "MakeMCP", shell_output("#{bin}/makemcp --help")
  end
end