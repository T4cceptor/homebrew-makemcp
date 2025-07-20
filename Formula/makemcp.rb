class Makemcp < Formula
  desc "Transform APIs into MCP servers for AI agents"
  homepage "https://github.com/T4cceptor/MakeMCP"
  version "0.2.1"
  url "https://github.com/T4cceptor/MakeMCP/archive/v0.2.1.tar.gz"
  sha256 "374e3cde906d1fd1a01338d56f5abbbc634091f99c28f09f3385b2f4e888bea7"
  license "Apache-2.0"
  head "https://github.com/T4cceptor/MakeMCP.git", branch: "main"

  depends_on "go" => :build unless which("go")

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/makemcp.go"
  end

  def caveats
    <<~EOS
      This formula requires Go to build. If you have Go installed outside of Homebrew
      and encounter conflicts, consider using 'brew unlink go' before installation
      or ensure your existing Go installation is properly configured in your PATH.
    EOS
  end

  test do
    assert_match "MakeMCP", shell_output("#{bin}/makemcp --help")
    
    # Test version command
    assert_match version.to_s, shell_output("#{bin}/makemcp --version")
  end
end