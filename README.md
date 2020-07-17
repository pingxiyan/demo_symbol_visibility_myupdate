# demo_symbol_visibility_myupdate

Add some test for CMakeLists.txt based on "https://github.com/rolsen/demo_symbol_visibility" <br>

# How to build and run

    $ ./build_all.sh
    PublicGetThree returned 3
    PublicGetSeven returned 7


For the both lib1 and lib2, the one of them must add "ADD_DEFINITIONS(--visibility=hidden)" to CMakeLists.txt, if not, we will get error result as follow:

    PublicGetThree returned 7
    PublicGetSeven returned 7

# Refer
https://labjack.com/news/simple-cpp-symbol-visibility-demo <br>
