cmake_minimum_required(VERSION 3.16)

project(RolePlayingLife VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appRolePlayingLife
    main.cpp
)

qt_add_qml_module(appRolePlayingLife
    URI RolePlayingLife
    QML_FILES
        Main.qml
)

qt_add_resources(appRolePlayingLife papaj
     PREFIX "/icons"
     FILES
         papaj.png
         pudzian.png
 )

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
set_target_properties(appRolePlayingLife PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appRolePlayingLife
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appRolePlayingLife
    PRIVATE Qt6::Quick
)

# Krytyczne dla iOS/QML bundling:
qt_import_qml_plugins(appRolePlayingLife)
qt_finalize_executable(appRolePlayingLife)

include(GNUInstallDirs)
install(TARGETS appRolePlayingLife
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
