# add googletest to a project

based on http://crascit.com/2015/07/25/cmake-gtest/

a more general version for an arbitrary project is provided by the author of the article: https://github.com/Crascit/DownloadProject

Here I use the specific version for easy integration.

- Copy this directory into your projects cmake/
- add `include( cmake/googletest-download/googletest-download.cmake)` to your CMakeLists.txt

