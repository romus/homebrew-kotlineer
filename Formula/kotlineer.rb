class Kotlineer < Formula
  include Language::Python::Virtualenv

  desc "Lightweight Python wrapper around JetBrains kotlin-lsp"
  homepage "https://github.com/romus/kotlineer"
  url "https://github.com/romus/kotlineer/releases/download/v0.2.0/kotlineer-0.2.0.tar.gz"
  sha256 "3f7360577e1115b3114fe83087784ab5e725cb03c7606bd811f5b35b795a883e"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/kotlineer --version")
    assert_predicate bin/"kotlineer-mcp", :exist?
  end
end
