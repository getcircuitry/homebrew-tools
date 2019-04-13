
class Circuitry < Formula
  desc "The CLI tools for building circuitry applications"
  homepage "https://www.getcircuitry.com"
  url "https://www.getcircuitry.com/maven/com/circuitry/tools/project-creator/1.0.zip"
  sha256 "a9969f7a333b1c416d1d0ceeab2b9513a43f9f100742c3327ed8c3810dfb244d"
  version "1.0"

  def install
    inreplace "brew/circuitry", "##PREFIX##", "#{prefix}"
    prefix.install "create-tool.jar"
    bin.install "brew/circuitry"
  end
end
