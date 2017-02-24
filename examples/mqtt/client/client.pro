TEMPLATE = app
TARGET = qmqtt_example
QT = core network

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += mqtt
} else {
    DEFINES += QMQTT_EXAMPLE
    INCLUDEPATH += ../../../src/mqtt
    LIBS += -L../../../src/mqtt -L../../../src/mqtt/debug -L../../../src/mqtt/release -lqmqtt
}

SOURCES += \
    example.cpp

target.path = $$[QT_INSTALL_EXAMPLES]/mqtt/client
INSTALLS += target
