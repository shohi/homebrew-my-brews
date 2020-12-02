class Helmenv < Formula
    desc "Helm version manager inspired by tfenv"
    homepage "https://github.com/little-angry-clouds/kubernetes-binaries-managers/"
    url "https://github.com/little-angry-clouds/kubernetes-binaries-managers/releases/download/0.2.5/helmenv-darwin-amd64.tar.gz"
    sha256 "091818a476cd151adf5051264137b25843f487079e0c7ec8e74f54d777fe94e1"
    version "0.2.5"
    
    # TODO: add multiple OS support
    def install
      bin.install "helmenv-darwin-amd64" => "#{bin}/helmenv"
      bin.install "helm-wrapper-darwin-amd64" => "#{bin}/helm"
    end
  
    test do
      system "#{bin}/helmenv", "--help"
    end
  end