#-------------------------------------------------
#
# Project created by QtCreator 2014-05-23T17:51:21
#
#-------------------------------------------------

QT       = core gui opengl serialport sql
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

win32: {
    QT += winextras
    DEFINES += WINDOWS
    QMAKE_LFLAGS += "-Wl,--large-address-aware"
    QMAKE_CXXFLAGS_DEBUG += -g3 -pg
    QMAKE_LFLAGS_DEBUG += -pg -lgmon
}

unix:!macx {
    DEFINES += UNIX #GL_GLEXT_PROTOTYPES
    QMAKE_LFLAGS += "-Wl,-rpath,\'\$$ORIGIN/libs\'"
}

contains(QT_CONFIG, opengles.) {
    warning("GL ES detected. VAO will be disabled.")
    DEFINES += GLES
    INSTALLS += target
    target.path = /home/pi
}

unix {
    QMAKE_CXXFLAGS += -std=c++0x
}

TARGET = CocoanutCNC
TEMPLATE = app
VERSION = 0.01a
#RC_ICONS += images/cocoanut.ico

DEFINES += sNan=\"65536\"
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

TRANSLATIONS += \
    translations/cocoanut_es.ts \
    translations/cocoanut_fr.ts \
    translations/cocoanut_pt.ts \
    translations/cocoanut_ru.ts

SOURCES +=\
    Main.cpp \
    Controller/MainFormController.cpp \
    Controller/SettingsFormController.cpp \
    Controller/JogFormController.cpp \
    Controller/ConsoleFormController.cpp \
    Controller/AboutFormController.cpp \
    Model/Tables/GcodeTableModel.cpp \
    Model/Tables/HeightMapTableModel.cpp \
    Model/Parser/ArcProperties.cpp \
    Model/Parser/GcodeParser.cpp \
    Model/Parser/LineSegment.cpp \
    Model/Parser/PointSegment.cpp \
    View/Drawers/GcodeDrawer.cpp \
    View/Drawers/HeightMapBorderDrawer.cpp \
    View/Drawers/HeightMapGridDrawer.cpp \
    View/Drawers/HeightMapInterpolationDrawer.cpp \
    View/Drawers/OriginDrawer.cpp \
    View/Drawers/SelectionDrawer.cpp \
    View/Drawers/ShaderDrawable.cpp \
    View/Drawers/ToolDrawer.cpp \
    Controller/ControlFormController.cpp \
    Controller/FeedFormController.cpp \
    Controller/HeightMapFormController.cpp \
    Controller/ProgramFormController.cpp \
    Controller/SpindleFormController.cpp \
    Controller/StateFormController.cpp \
    Controller/UserCommandsFormController.cpp \
    Controller/VisualisationFormController.cpp \
    Controller/AbstractFormController.cpp \
    Model/StatusModel.cpp \
    Model/GcodeFileModel.cpp \
    Model/HeightMapFileModel.cpp \
    Model/RecentFilesModel.cpp \
    Model/RecentHeightMapFilesModel.cpp \
    View/Widgets/GLWidget.cpp \
    Model/Settings/AbstractSettingsModel.cpp \
    Model/Settings/IniFileSettingsModel.cpp \
    View/Drawers/GridDrawer.cpp \
    Model/Settings/Settings.cpp \
    Model/GrblMachineModel.cpp \
    Utils/IndexOutOfBoundsException.cpp \
    Model/GcodeCommand.cpp \
    Model/GrblResponse.cpp \
    Utils/GcodeCommandNotFoundException.cpp \
    Model/Parser/GcodeViewParser.cpp \
    Controller/ToolHolderModelFormController.cpp \
    Model/ToolHolderModelListModel.cpp \
    Model/ToolHolderModelTableModel.cpp \
    Model/ToolHolderModelListItem.cpp \
    Model/ToolHolderModelGeometryItem.cpp


HEADERS  += \
    Controller/JogFormController.h \
    Controller/AboutFormController.h \
    Controller/ConsoleFormController.h \
    Controller/SettingsFormController.h \
    Controller/MainFormController.h \
    Model/Parser/ArcProperties.h \
    Model/Parser/GcodeParser.h \
    Model/Parser/LineSegment.h \
    Model/Parser/PointSegment.h \
    Model/Tables/HeightMapTableModel.h \
    Model/Tables/GcodeTableModel.h \
    View/Drawers/GcodeDrawer.h \
    View/Drawers/HeightMapBorderDrawer.h \
    View/Drawers/HeightMapGridDrawer.h \
    View/Drawers/HeightMapInterpolationDrawer.h \
    View/Drawers/OriginDrawer.h \
    View/Drawers/SelectionDrawer.h \
    View/Drawers/ShaderDrawable.h \
    View/Drawers/ToolDrawer.h \
    View/Widgets/GLWidget.h \
    Utils/Interpolation.h \
    Utils/Util.h \
    Controller/ControlFormController.h \
    Controller/FeedFormController.h \
    Controller/HeightMapFormController.h \
    Controller/ProgramFormController.h \
    Controller/SpindleFormController.h \
    Controller/StateFormController.h \
    Controller/UserCommandsFormController.h \
    Controller/VisualisationFormController.h \
    Controller/AbstractFormController.h \
    Model/Settings/IniFileSettingsModel.h \
    Model/StatusModel.h \
    Model/GcodeFileModel.h \
    Model/HeightMapFileModel.h \
    Model/RecentFilesModel.h \
    Model/RecentHeightMapFilesModel.h \
    Controller/CancelException.h \
    Model/Settings/AbstractSettingsModel.h \
    View/Drawers/GridDrawer.h \
    Model/SerialBaudRate.h \
    Model/Settings/Settings.h \
    Model/GrblMachineModel.h \
    Utils/IndexOutOfBoundsException.h \
    Model/GcodeCommand.h \
    Model/GrblResponse.h \
    Model/GrblMachineState.h \
    Utils/GcodeCommandNotFoundException.h \
    Model/Parser/GcodeViewParser.h \
    Controller/ToolHolderModelFormController.h \
    Model/ToolHolderModelListModel.h \
    Model/ToolHolderModelListItem.h \
    Model/ToolHolderModelTableModel.h \
    Model/ToolHolderModelGeometryItem.h

FORMS    += \
    View/AboutForm.ui \
    View/ConsoleForm.ui \
    View/ControlForm.ui \
    View/FeedForm.ui \
    View/HeightMapForm.ui \
    View/JogForm.ui \
    View/MainForm.ui \
    View/ProgramForm.ui \
    View/SettingsForm.ui \
    View/SpindleForm.ui \
    View/StateForm.ui \
    View/UserCommandsForm.ui \
    View/VisualisationForm.ui \
    View/ToolHolderModelForm.ui

DEFINES += _USE_MATH_DEFINES
DEFINES += QT_SHAREDPOINTER_TRACK_POINTERS

RESOURCES += \
    Resources/Shaders.qrc \
    Resources/Images.qrc \
    Resources/Misc.qrc

CONFIG += c++11
