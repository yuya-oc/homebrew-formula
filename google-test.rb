require 'formula'

class GoogleTest < Formula
    homepage 'http://code.google.com/p/googletest/'
    url 'http://googletest.googlecode.com/files/gtest-1.6.0.zip'
    sha1 '00d6be170eb9fc3b2198ffdcb1f1d6ba7fc6e621'
    head 'http://googletest.googlecode.com/svn/trunk/'
    
    depends_on 'cmake' => :build
    
    def options
        [
        # Add options here
        # ["--option", "Description."],
        ]
    end

    def install
        args = std_cmake_args
        system 'cmake', *args
        system "make"
        lib.install Dir['libgtest*.a']
        include.install Dir['include/gtest']
    end
end
