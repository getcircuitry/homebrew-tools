
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "http://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0.20190425122948/project-creator-1.0.20190425122948.zip"
  sha256 "d9ae1a510b78b109ff4cca8b929885993560647f3a2ea5f3fa4162c50931fb9b"
  version "1.0.20190425122948"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
