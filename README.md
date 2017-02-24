QMQTT (Qt4 Backport)
====================

[![Build Status](https://travis-ci.org/george-hopkins/qmqtt-qt4.svg?branch=master)](https://travis-ci.org/george-hopkins/qmqtt-qt4)

**Note:** This a MQTT client for Qt4. It is a backport from EMQTT's fantastic [QMQTT](https://github.com/emqtt/qmqtt). The backported library has not been tested and some advanced features have been disabled.

Usage
=====

	#include "qmqtt.h"

	QMQTT::Client *client = new QMQTT::Client(QHostAddress::LocalHost, 1883);

	client->setClientId("clientId");

	client->setUsername("user");

	client->setPassword("password");

	client->connectToHost();


Slots
=====

    void setHost(const QHostAddress& host);
    void setPort(const quint16 port);
    void setClientId(const QString& clientId);
    void setUsername(const QString& username);
    void setPassword(const QString& password);
    void setKeepAlive(const int keepAlive);
    void setCleanSession(const bool cleansess);
    void setAutoReconnect(const bool value);
    void setAutoReconnectInterval(const int autoReconnectInterval);
    void setWillTopic(const QString& willTopic);
    void setWillQos(const quint8 willQos);
    void setWillRetain(const bool willRetain);
    void setWillMessage(const QString& willMessage);

    void connectToHost();
    void disconnectFromHost();

    quint16 subscribe(const QString& topic, const quint8 qos);
    void unsubscribe(const QString& topic);

    quint16 publish(const Message& message);

Signals
=======

    void connected();
    void disconnected();
    void error(const QMQTT::ClientError error);

    // todo: should emit on server suback (or is that only at specific QoS levels?)
    void subscribed(const QString& topic);
    // todo: should emit on server unsuback (or is that only at specific QoS levels?)
    void unsubscribed(const QString& topic);
    // todo: should emit on server puback (or is that only at specific QoS levels?)
    void published(const QMQTT::Message& message);

    void received(const QMQTT::Message& message);


License
=======

New BSD License


Contributors
=============

* [Kampfgnom](https://github.com/Kampfgnom)
* [rafaeldelucena](https://github.com/rafaeldelucena)
* [George Hopkins](https://github.com/george-hopkins)


Authors
=======

 * Feng Lee <feng@emqtt.io>
 * William Guynes <wguynes@gmail.com>
 * wuming123057 <huacai123057@163.com>
