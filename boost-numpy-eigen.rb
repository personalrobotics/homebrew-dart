require 'formula'

class BoostNumpyEigen < Formula
  homepage 'http://www.personalrobotics.ri.cmu.edu'
  url 'https://github.com/personalrobotics/Boost.NumPy_Eigen/archive/0.0.1.tar.gz'
  sha1 '288ba3fb51bc3eb8ffad5a9f5076a51b449a8cce'
  head 'https://github.com/personalrobotics/Boost.NumPy_Eigen.git', :branch => 'master'

  depends_on 'cmake' => :build
  depends_on 'boost-numpy'

  def install
    cmake_args = std_cmake_args
    system "cmake", ".", *cmake_args
    system "make install"
  end
end
