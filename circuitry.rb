
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0/project-creator-1.0.zip"
  sha256 "11be30a2720f42e6c864f5f7ae8668140bdedda804c7049b35215216b7a12f58"
  version "1.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
