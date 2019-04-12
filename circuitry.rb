
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/component-creator/1.0/component-creator-1.0.zip"
  sha256 "4db3cce432efe29cec75e89fa246196ec5a5108dd810e1845f0660ea751f1eaf"
  version "1.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
