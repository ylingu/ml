add_rules("mode.debug", "mode.release")
add_requires("eigen","opencv","zlib")

target("library")
    set_languages("cxxlatest")
    set_kind("shared")
    add_files("src/*.cc")
    add_includedirs("include")
    add_packages("eigen","opencv")

target("main")
    set_languages("cxxlatest")
    add_files("*.cc")
    add_includedirs("include")
    add_packages("eigen","opencv","zlib")
    add_deps("library")

-- target("test")
--     set_languages("cxxlatest")
--     add_files("test/*.cpp")
--     add_includedirs("include")
--     add_packages("eigen","opencv","zlib")
--     add_deps("library")

target("exp1")
    set_languages("cxxlatest")
    add_files("examples/exp1.cc")
    add_includedirs("include")
    add_packages("eigen","opencv","zlib")
    add_deps("library")

target("exp2")
    set_languages("cxxlatest")
    add_files("examples/exp2.cc")
    add_includedirs("include")
    add_packages("eigen","opencv","zlib")
    add_deps("library")

target("exp3")
    set_languages("cxxlatest")
    add_files("examples/exp3.cc")
    add_includedirs("include")
    add_packages("eigen","opencv","zlib")
    add_deps("library")
