include(CheckFunctionExists)
include(CheckLibraryExists)

set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
find_package(Threads)

set(CMAKE_EXE_LINKER_FLAGS "")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "")

if (CMAKE_COMPILER_IS_GNUCXX)
    check_function_exists(__atomic_fetch_add_4 HAVE___ATOMIC_FETCH_ADD_4)
    if (NOT HAVE___ATOMIC_FETCH_ADD_4)
        check_library_exists(atomic __atomic_fetch_add_4 "" HAVE_LIBATOMIC)
        if (HAVE_LIBATOMIC)
            set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -latomic")
        endif()
    endif()
endif()

set(CMAKE_C_STANDARD_LIBRARIES ${CMAKE_DL_LIBS})

check_include_files(syslog.h HAVE_SYSLOG_H)
check_include_files(execinfo.h HAVE_EXECINFO_H)
set(CURSES_NEED_NCURSES TRUE)
find_package(Curses)
set(HAVE_NCURSES_H ${CURSES_HAVE_NCURSES_H})
if (HAVE_NCURSES_H)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
    set(CMAKE_C_STANDARD_LIBRARIES "${CMAKE_C_STANDARD_LIBRARIES}")
endif()

check_library_exists(rt clock_gettime "time.h" HAVE_CLOCKGETTIME)
if (HAVE_CLOCKGETTIME)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lrt")
    set(CMAKE_C_STANDARD_LIBRARIES "${CMAKE_C_STANDARD_LIBRARIES} -lrt")
else()
	# might also be in libc
	check_library_exists(c clock_gettime "" HAVE_CLOCKGETTIME)
endif()

set(CMAKE_C_FLAGS "-g -Wcast-qual -Wcast-align -Wpointer-arith -Wno-long-long -Wno-multichar -Wshadow -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter -Wreturn-type -Wwrite-strings -Wno-variadic-macros -Wno-unknown-pragmas")
if (CMAKE_USE_PTHREADS_INIT)
	set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")
endif()
set(CMAKE_C_FLAGS_RELEASE "-D_GNU_SOURCE -D_BSD_SOURCE -D_DEFAULT_SOURCE -D_XOPEN_SOURCE -D_FORTIFY_SOURCE=2 -DNDEBUG -fexpensive-optimizations -fomit-frame-pointer -O3")
set(CMAKE_C_FLAGS_DEBUG "-DDEBUG -fno-omit-frame-pointer")

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -std=c++11 -Wnon-virtual-dtor -fno-rtti -fno-exceptions")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" CACHE STRING "Generic C++ Compiler Flags" FORCE)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}" CACHE STRING "C++ Debug Compiler Flags" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}" CACHE STRING "C++ Release Compiler Flags" FORCE)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE STRING "Generic C Compiler Flags" FORCE)
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}" CACHE STRING "C Debug Compiler Flags" FORCE)
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}" CACHE STRING "C Release Compiler Flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}" CACHE STRING "Generic Linker Flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG}" CACHE STRING "Debug Linker Flags" FORCE)
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE}" CACHE STRING "Release Linker Flags" FORCE)
