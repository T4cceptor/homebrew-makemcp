class Makemcp < Formula
  desc "Transform APIs into MCP servers for AI agents"
  homepage "https://github.com/T4cceptor/MakeMCP"
  version "0.2.1"
  license "Apache-2.0"
  head "https://github.com/T4cceptor/MakeMCP.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-v0.2.1-darwin-amd64.tar.gz"
      sha256 "875db09126837900433d5e81066c1d2f59e8a86373ab750b8bc8b27e9e041514"
    end
    on_arm do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-v0.2.1-darwin-arm64.tar.gz"
      sha256 "36606552f9f1369a218cda4b336f333a870c7feb6c6a96c0b13338f3100c425a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-v0.2.1-linux-amd64.tar.gz"
      sha256 "579cabbb9311f84c611a8b7813b34bfc5f76fe32ccf6952c86056c841195ad35"
    end
    on_arm do
      url "https://github.com/T4cceptor/MakeMCP/releases/download/v0.2.1/makemcp-v0.2.1-linux-arm64.tar.gz"
      sha256 "73f6dd03547aee09b97687fba396be2a0a58a06bc79e6f6d011e593ffe4a422a"
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