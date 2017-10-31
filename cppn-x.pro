######################################################################
# Automatically generated by qmake (2.01a) Thu Jun 20 12:15:51 2013
######################################################################

# Add additional information
VERSION = 1.0.1
DEFINES += APP_VERSION=\\\"$$VERSION\\\"
QMAKE_TARGET_COMPANY = EvolvingAI Lab
QMAKE_TARGET_PRODUCT = CPPN-X
QMAKE_TARGET_DESCRIPTION = "Tool for examining Picbreeder.com CPPNs"
#QMAKE_TARGET_COPYRIGHT =

macx {
  ICON = macx/cppnx.icns
  QMAKE_INFO_PLIST = "macx/Info.plist"
  # These two lines are a workaround for the following bug
  # https://bugreports.qt.io/browse/QTBUG-21267
  QMAKE_INFO_PLIST_OUT = cppn-x.app/Contents/Info.plist
  PRE_TARGETDEPS += cppn-x.app/Contents/Info.plist
  PRE_TARGETDEPS += cppn-x.app/Contents/Resources/cppnx.icns  
}

TEMPLATE = app
TARGET = cppn-x

CONFIG += static 

# Add support for writing svg files
QT += svg
QT += network

# Remove default deployment target
QMAKE_CFLAGS_X86_64 -= -mmacosx-version-min=10.5
QMAKE_CXXFLAGS_X86_64 -= -mmacosx-version-min=10.5
QMAKE_LFLAGS_X86_64 -= -mmacosx-version-min=10.5

# Set deployment target (edit line to choose your target)
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.9
#QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.7
#QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5

# Add deployment target
QMAKE_CFLAGS_X86_64 += -mmacosx-version-min=$$QMAKE_MACOSX_DEPLOYMENT_TARGET
QMAKE_CXXFLAGS_X86_64 += -mmacosx-version-min=$$QMAKE_MACOSX_DEPLOYMENT_TARGET
QMAKE_LFLAGS_X86_64 += -mmacosx-version-min=$$QMAKE_MACOSX_DEPLOYMENT_TARGET

# Uncomment and edit to set a different SDK
#macx {
#    QMAKE_MAC_SDK = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk
#}

# Load the qt configuration
load(qt_config)

# Uncomment to verify compiler settings 
#message("Deployment target:" $$QMAKE_MACOSX_DEPLOYMENT_TARGET)
#message("C-Flags:" $$QMAKE_CFLAGS)
#message("C-Flags X86_64:" $$QMAKE_CFLAGS_X86_64)
#message("CXX-Flags:" $$QMAKE_CXXFLAGS)
#message("CXX-Flags X86_64:" $$QMAKE_CXXFLAGS_X86_64)
#message("Link-Flags:" $$QMAKE_LFLAGS)
#message("Link-Flags X86_64:" $$QMAKE_LFLAGS_X86_64)
#message("Config:" $$CONFIG)

DEPENDPATH += . \
              zlib \
              cppn-x/include \
              cppn-x/src \
              JGTL/include \
              libzip-0.11.1/lib

INCLUDEPATH += . \
               zlib \
               cppn-x/include \
               JGTL/include \
               libzip-0.11.1/lib \
               libzip-0.11.1/xcode \
               /usr/local/include \
               libzip-0.11.1/src

LIBS += -lm \ 
        -lgsl \
        -lgslcblas \
        -L/usr/local/lib

# Required for some C99 defines
DEFINES += __STDC_CONSTANT_MACROS        

# Header files
HEADERS += zlib/crc32.h \
           zlib/deflate.h \
           zlib/inffast.h \
           zlib/inffixed.h \
           zlib/inflate.h \
           zlib/inftrees.h \
           zlib/trees.h \
           zlib/zconf.h \
           zlib/zconf.in.h \
           zlib/zlib.h \
           zlib/zutil.h \
           cppn-x/include/CE_ActivationFunctions.h \
           cppn-x/include/CE_Label.h \
           cppn-x/include/CE_Cppn.h \
           cppn-x/include/CE_CppnParser.h \
           cppn-x/include/CE_CppnWidget.h \
           cppn-x/include/CE_CppnWriter.h \
           cppn-x/include/CE_Defines.h \
           cppn-x/include/CE_Edge.h \
           cppn-x/include/CE_FinalNodeView.h \
           cppn-x/include/CE_Node.h \
           cppn-x/include/CE_NodeView.h \
           cppn-x/include/CE_Util.h \
           cppn-x/include/CE_Window.h \
           cppn-x/include/CE_Xml.h \
           cppn-x/include/CE_NodeViewWidget.h \
           cppn-x/include/CE_LabelWidget.h \
           cppn-x/include/CX_WeightWidget.h \
           cppn-x/include/CX_WeightSliderWidget.h \
           cppn-x/include/CE_LabelableObject.h \
           cppn-x/include/CX_SelectableObject.h \
           cppn-x/include/CX_ContextMenuGraphicsView.h \
           cppn-x/include/CX_DragAndDropObject.h \
           cppn-x/include/CX_DragAndDropGraphicsView.h \
           cppn-x/include/CX_ComDragAndDrop.h \
           cppn-x/include/CX_ComSetBookends.h \
           cppn-x/include/CX_SortedNodesList.h \
           cppn-x/include/CX_ComAddRemoveObject.h \
           cppn-x/include/CE_Parser.hpp \
           cppn-x/include/CE_MainParser.h \
           cppn-x/include/CX_ModuleColor.h \
           cppn-x/include/CX_ArgumentParser.h \
           cppn-x/include/CX_Debug.hpp \
           cppn-x/include/CX_Random.hpp \
           cppn-x/include/CX_ComChangeActivation.hpp \
           cppn-x/include/CX_Point.hpp \
           cppn-x/include/CX_Legend.hpp \
           cppn-x/include/CX_CppnExaminerApp.hpp \
           cppn-x/include/CX_MovableObject.hpp \
           cppn-x/include/CX_PreferencesWidget.hpp \
           cppn-x/include/CX_GlobalSettings.h \
           cppn-x/include/CX_CsvParser.hpp \
           cppn-x/include/CX_CppnInformation.hpp \
           cppn-x/include/CX_GenomeDirWidget.hpp \
           cppn-x/include/CX_DownloadAssistant.hpp \
           libzip-0.11.1/lib/zip.h \
           libzip-0.11.1/lib/zipconf.h \
           libzip-0.11.1/lib/zipint.h

# Source files           
SOURCES += zlib/adler32.c \
           zlib/compress.c \
           zlib/crc32.c \
           zlib/deflate.c \
           zlib/gzio.c \
           zlib/infback.c \
           zlib/inffast.c \
           zlib/inflate.c \
           zlib/inftrees.c \
           zlib/trees.c \
           zlib/uncompr.c \
           zlib/zutil.c \
           cppn-x/src/CE_ActivationFunctions.cpp \
           cppn-x/src/CE_Label.cpp \
           cppn-x/src/CE_LabelableObject.cpp \
           cppn-x/src/CE_Cppn.cpp \
           cppn-x/src/CE_CppnParser.cpp \
           cppn-x/src/CE_CppnWidget.cpp \
           cppn-x/src/CE_CppnWriter.cpp \
           cppn-x/src/CE_Edge.cpp \
           cppn-x/src/CE_FinalNodeView.cpp \
           cppn-x/src/CE_Main.cpp \
           cppn-x/src/CE_Node.cpp \
           cppn-x/src/CE_NodeView.cpp \
           cppn-x/src/CE_Window.cpp \
           cppn-x/src/CE_VerticalScrollArea.cpp \
           cppn-x/src/CX_ComLabelObject.cpp \
           cppn-x/src/CX_ComSetWeight.cpp \
           cppn-x/src/CX_ComAddLabel.cpp \
           cppn-x/src/CX_ComNodeView.cpp \
           cppn-x/src/CX_ComSetPos.cpp \
           cppn-x/src/CX_ComChangeLabelColor.cpp \
           cppn-x/src/CX_ComChangeLabelName.cpp \
           cppn-x/src/CE_NodeViewWidget.cpp \
           cppn-x/src/CE_LabelWidget.cpp \
           cppn-x/src/CE_Util.cpp \
           cppn-x/src/CX_WeightWidget.cpp \
           cppn-x/src/CX_WeightSliderWidget.cpp \
           cppn-x/src/CX_SelectableObject.cpp \
           cppn-x/src/CX_DragAndDropObject.cpp \
           cppn-x/src/CX_ContextMenuGraphicsView.cpp \
           cppn-x/src/CX_ComDragAndDrop.cpp \
           cppn-x/src/CX_ComSetBookends.cpp \
           cppn-x/src/CX_ComAddRemoveObject.cpp \
           cppn-x/src/CE_Parser.cpp \
           cppn-x/src/CE_MainParser.cpp \
           cppn-x/src/CX_ModuleColor.cpp\
           cppn-x/src/CX_Debug.cpp \
           cppn-x/src/CX_ComChangeActivation.cpp \
           cppn-x/src/CX_Point.cpp \
           cppn-x/src/CX_Legend.cpp \
           cppn-x/src/CX_CppnExaminerApp.cpp \
           cppn-x/src/CX_MovableObject.cpp \
           cppn-x/src/CX_PreferencesWidget.cpp \
           cppn-x/src/CX_GlobalSettings.cpp \
           cppn-x/src/CX_CsvParser.cpp \
           cppn-x/src/CX_GenomeDirWidget.cpp \
           cppn-x/src/CX_DownloadAssistant.cpp \
           libzip-0.11.1/lib/mkstemp.c \
           libzip-0.11.1/lib/zip_add.c \
           libzip-0.11.1/lib/zip_add_dir.c \
           libzip-0.11.1/lib/zip_add_entry.c \
           libzip-0.11.1/lib/zip_close.c \
           libzip-0.11.1/lib/zip_delete.c \
           libzip-0.11.1/lib/zip_dir_add.c \
           libzip-0.11.1/lib/zip_dirent.c \
           libzip-0.11.1/lib/zip_discard.c \
           libzip-0.11.1/lib/zip_entry.c \
           libzip-0.11.1/lib/zip_err_str.c \
           libzip-0.11.1/lib/zip_error.c \
           libzip-0.11.1/lib/zip_error_clear.c \
           libzip-0.11.1/lib/zip_error_get.c \
           libzip-0.11.1/lib/zip_error_get_sys_type.c \
           libzip-0.11.1/lib/zip_error_strerror.c \
           libzip-0.11.1/lib/zip_error_to_str.c \
           libzip-0.11.1/lib/zip_extra_field.c \
           libzip-0.11.1/lib/zip_extra_field_api.c \
           libzip-0.11.1/lib/zip_fclose.c \
           libzip-0.11.1/lib/zip_fdopen.c \
           libzip-0.11.1/lib/zip_file_add.c \
           libzip-0.11.1/lib/zip_file_error_clear.c \
           libzip-0.11.1/lib/zip_file_error_get.c \
           libzip-0.11.1/lib/zip_file_get_comment.c \
           libzip-0.11.1/lib/zip_file_get_offset.c \
           libzip-0.11.1/lib/zip_file_rename.c \
           libzip-0.11.1/lib/zip_file_replace.c \
           libzip-0.11.1/lib/zip_file_set_comment.c \
           libzip-0.11.1/lib/zip_file_strerror.c \
           libzip-0.11.1/lib/zip_filerange_crc.c \
           libzip-0.11.1/lib/zip_fopen.c \
           libzip-0.11.1/lib/zip_fopen_encrypted.c \
           libzip-0.11.1/lib/zip_fopen_index.c \
           libzip-0.11.1/lib/zip_fopen_index_encrypted.c \
           libzip-0.11.1/lib/zip_fread.c \
           libzip-0.11.1/lib/zip_get_archive_comment.c \
           libzip-0.11.1/lib/zip_get_archive_flag.c \
           libzip-0.11.1/lib/zip_get_compression_implementation.c \
           libzip-0.11.1/lib/zip_get_encryption_implementation.c \
           libzip-0.11.1/lib/zip_get_file_comment.c \
           libzip-0.11.1/lib/zip_get_name.c \
           libzip-0.11.1/lib/zip_get_num_entries.c \
           libzip-0.11.1/lib/zip_get_num_files.c \
           libzip-0.11.1/lib/zip_memdup.c \
           libzip-0.11.1/lib/zip_name_locate.c \
           libzip-0.11.1/lib/zip_new.c \
           libzip-0.11.1/lib/zip_open.c \
           libzip-0.11.1/lib/zip_rename.c \
           libzip-0.11.1/lib/zip_replace.c \
           libzip-0.11.1/lib/zip_set_archive_comment.c \
           libzip-0.11.1/lib/zip_set_archive_flag.c \
           libzip-0.11.1/lib/zip_set_default_password.c \
           libzip-0.11.1/lib/zip_set_file_comment.c \
           libzip-0.11.1/lib/zip_set_file_compression.c \
           libzip-0.11.1/lib/zip_set_name.c \
           libzip-0.11.1/lib/zip_source_buffer.c \
           libzip-0.11.1/lib/zip_source_close.c \
           libzip-0.11.1/lib/zip_source_crc.c \
           libzip-0.11.1/lib/zip_source_deflate.c \
           libzip-0.11.1/lib/zip_source_error.c \
           libzip-0.11.1/lib/zip_source_file.c \
           libzip-0.11.1/lib/zip_source_filep.c \
           libzip-0.11.1/lib/zip_source_free.c \
           libzip-0.11.1/lib/zip_source_function.c \
           libzip-0.11.1/lib/zip_source_layered.c \
           libzip-0.11.1/lib/zip_source_open.c \
           libzip-0.11.1/lib/zip_source_pkware.c \
           libzip-0.11.1/lib/zip_source_pop.c \
           libzip-0.11.1/lib/zip_source_read.c \
           libzip-0.11.1/lib/zip_source_stat.c \
           libzip-0.11.1/lib/zip_source_window.c \
           libzip-0.11.1/lib/zip_source_zip.c \
           libzip-0.11.1/lib/zip_source_zip_new.c \
           libzip-0.11.1/lib/zip_stat.c \
           libzip-0.11.1/lib/zip_stat_index.c \
           libzip-0.11.1/lib/zip_stat_init.c \
           libzip-0.11.1/lib/zip_strerror.c \
           libzip-0.11.1/lib/zip_string.c \
           libzip-0.11.1/lib/zip_unchange.c \
           libzip-0.11.1/lib/zip_unchange_all.c \
           libzip-0.11.1/lib/zip_unchange_archive.c \
           libzip-0.11.1/lib/zip_unchange_data.c \
           libzip-0.11.1/lib/zip_utf-8.c 
