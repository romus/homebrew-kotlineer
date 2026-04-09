class Kotlineer < Formula
  include Language::Python::Virtualenv

  desc "Lightweight Python wrapper around JetBrains kotlin-lsp"
  homepage "https://github.com/romus/kotlineer"
  url "https://github.com/romus/kotlineer/releases/download/v0.1.0/kotlineer-0.1.0.tar.gz"
  sha256 "4437878db00d979f8710677a8464d440d741d05be913ed506bff61a4b8bd06aa"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/kotlineer --version")
  end
end
