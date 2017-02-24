INCLUDEPATH += $$PWD

PUBLIC_HEADERS += \
    $$PWD/qmqtt_client.h \
    $$PWD/qmqtt_frame.h \
    $$PWD/qmqtt_message.h \
    $$PWD/qmqtt_networkinterface.h \
    $$PWD/qmqtt_socketinterface.h \
    $$PWD/qmqtt_timerinterface.h

greaterThan(QT_MAJOR_VERSION, 4): PUBLIC_HEADERS += \
    $$PWD/qmqtt_routesubscription.h \
    $$PWD/qmqtt_routedmessage.h \
    $$PWD/qmqtt_router.h

PRIVATE_HEADERS += \
    $$PWD/qmqtt_client_p.h \
    $$PWD/qmqtt_logging_p.h \
    $$PWD/qmqtt_message_p.h \
    $$PWD/qmqtt_network_p.h \
    $$PWD/qmqtt_socket_p.h \
    $$PWD/qmqtt_ssl_network_p.h \
    $$PWD/qmqtt_ssl_socket_p.h \
    $$PWD/qmqtt_string_p.h \
    $$PWD/qmqtt_timer_p.h

SOURCES += \
    $$PWD/qmqtt_client_p.cpp \
    $$PWD/qmqtt_client.cpp \
    $$PWD/qmqtt_frame.cpp \
    $$PWD/qmqtt_message.cpp \
    $$PWD/qmqtt_network.cpp \
    $$PWD/qmqtt_ssl_network.cpp \
    $$PWD/qmqtt_message_p.cpp \
    $$PWD/qmqtt_socket.cpp \
    $$PWD/qmqtt_ssl_socket.cpp \
    $$PWD/qmqtt_timer.cpp

greaterThan(QT_MAJOR_VERSION, 4): SOURCES += \
    $$PWD/qmqtt_routesubscription.cpp \
    $$PWD/qmqtt_routedmessage.cpp \
    $$PWD/qmqtt_router.cpp
