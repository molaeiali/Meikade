VERSION = 4.1.95
TARGET = Meikade

QMAKE_TARGET_BUNDLE_PREFIX = io.aseman
QMAKE_BUNDLE = Meikade

include(configurations/configurations.pri)
include(translations/translations.pri)
include(qml/qml.pri)
include(cpp/cpp.pri)
include(objective-c/objective-c.pri)
