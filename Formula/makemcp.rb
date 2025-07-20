class Makemcp < Formula
  desc "Transform APIs into MCP servers for AI agents"
  homepage "https://github.com/T4cceptor/MakeMCP"
  version "0.2.1"
  license "Apache-2.0"
  head "https://github.com/T4cceptor/MakeMCP.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_INTEL_SHA256"
    end
    on_arm do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_INTEL_SHA256"
    end
    on_arm do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    end
  end

  def install
    bin.install "makemcp"
  end


  test do
    assert_match "MakeMCP", shell_output("#{bin}/makemcp --help")
    
    # Test version command
    assert_match version.to_s, shell_output("#{bin}/makemcp --version")
  end
end