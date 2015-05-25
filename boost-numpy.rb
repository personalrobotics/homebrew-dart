require 'formula'

class BoostNumpy < Formula
  homepage 'http://www.personalrobotics.ri.cmu.edu'
  url 'https://github.com/personalrobotics/Boost.NumPy/archive/0.0.1.tar.gz'
  sha1 'c4608d7881e362e284f186e065765d780833c76a'
  head 'https://github.com/personalrobotics/Boost.NumPy.git', :branch => 'master'

  depends_on 'cmake' => :build
  depends_on 'numpy'
  depends_on 'boost-python'

  def install
    cmake_args = std_cmake_args
    system "cmake", ".", *cmake_args
    system "make install"
  end
end
