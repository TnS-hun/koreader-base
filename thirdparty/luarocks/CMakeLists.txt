# Build in source tree.
set(BINARY_DIR ${SOURCE_DIR})

list(APPEND CFG_CMD COMMAND
    ./configure
    --prefix=${STAGING_DIR}
    --with-lua=${STAGING_DIR}
)

list(APPEND BUILD_CMD COMMAND make)

list(APPEND INSTALL_CMD COMMAND make install)

# Try to use our compilation flags.
set(LIBFLAGS ${DYNLIB_LDFLAGS})
foreach(VAR CC CFLAGS LIBFLAGS)
    list(APPEND INSTALL_CMD COMMAND ${STAGING_DIR}/bin/luarocks config -- ${VAR} "${${VAR}}")
endforeach()

external_project(
    DOWNLOAD URL ab95865ced3c123908bd2f1fe6843606
    https://github.com/luarocks/luarocks/archive/refs/tags/v3.11.1.tar.gz
    CONFIGURE_COMMAND ${CFG_CMD}
    BUILD_COMMAND ${BUILD_CMD}
    INSTALL_COMMAND ${INSTALL_CMD}
)
