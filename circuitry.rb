
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0.20190415131658/project-creator-1.0.20190415131658.zip"
  sha256 "22709f01213b39c2a58f0231fd490ca96d0f055524fec1489daae09abaa99d61"
  version "1.0.20190415131658"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
