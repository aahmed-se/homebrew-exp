class Concurnas < Formula
  desc "Concurnas is an open source JVM programming language designed for building reliable, scalable, high performance concurrent, distributed and parallel systems"
  homepage "https://concurnas.com"
  url "https://github.com/Concurnas/Concurnas/releases/download/1.14.020/Concurnas-1.14.020.zip"
  sha256 "e056bdd53c7d2809a438242e48d249382de6d3bd86ef067cb5da3c5ab631690f"
  version "1.14.020"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/conc"]
    bin.write_exec_script Dir["#{libexec}/bin/concc"]
  end

end
