
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/component-creator/1.0/component-creator-1.0.zip"
  sha256 "55862a51831921254e178b8bfe67d52c8a366b5ff734abd24c5257547cfd5e98"
  version "1.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
