class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/component-creator/1.0/component-creator-1.0.zip"
  sha256 "5018dcecddc2e3406d25072336bf68e7609006d70967e849757f2eb7a8ee8d7d"
  version "1.0.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end