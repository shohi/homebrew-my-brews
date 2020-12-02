class Kbenv < Formula
    desc "Kubectl version manager inspired by tfenv"
    homepage "https://github.com/little-angry-clouds/kubernetes-binaries-managers/"
    url "https://github.com/little-angry-clouds/kubernetes-binaries-managers/releases/download/0.2.5/kbenv-darwin-amd64.tar.gz"
    sha256 "50a037ddfd4de0f42a739c9be4c2e9acd9f9e0d8f6e93539bd038e7768c43de7"
    version "0.2.5"
  
    def install
        bin.install "kbenv-darwin-amd64" => "#{bin}/kbenv"
        bin.install "kubectl-wrapper-darwin-amd64" => "#{bin}/kubectl"
    end
  
    test do
      system "#{bin}/kbenv", "--help"
    end
  end