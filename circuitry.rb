class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/component-creator/1.0/component-creator-1.0.zip"
  sha256 "5fce02eb84ac5362de46070625965153afdcda46c260dd5a358c287b578b939b"
  version "1.0.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end