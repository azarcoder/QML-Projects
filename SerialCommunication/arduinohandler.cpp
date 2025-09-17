#include "arduinohandler.h"
#include <QStringList>
#include <QDebug>

ArduinoHandler::ArduinoHandler(QObject *parent) : QObject(parent) {
    connect(&serial, &QSerialPort::readyRead, this, &ArduinoHandler::onReadyRead);
    connect(&serial, &QSerialPort::errorOccurred, this, &ArduinoHandler::handleError);
}

void ArduinoHandler::connectArduino(const QString &portName) {
    serial.setPortName(portName);
    serial.setBaudRate(QSerialPort::Baud9600);

    if (serial.open(QIODevice::ReadOnly)) {
        m_connected = true;
        emit connectedChanged();
        qDebug() << "Arduino connected on" << portName;
    } else {
        qDebug() << "Failed to open port" << portName << ":" << serial.errorString();
    }
}


void ArduinoHandler::onReadyRead() {
    m_buffer.append(serial.readAll());

    int newlineIndex;
    while ((newlineIndex = m_buffer.indexOf('\n')) != -1) {
        QByteArray line = m_buffer.left(newlineIndex).trimmed();
        m_buffer.remove(0, newlineIndex + 1);

        if (line.isEmpty()) continue;

        QStringList parts = QString::fromUtf8(line).split(",");
        if (parts.size() == 3) {
            m_temperature = parts[0].toInt();
            m_humidity    = parts[1].toInt();
            m_pressure    = parts[2].toInt();
            emit dataChanged();
        }
    }
}


void ArduinoHandler::handleError(QSerialPort::SerialPortError error)
{
    if (error == QSerialPort::ResourceError || error == QSerialPort::DeviceNotFoundError) {
        qDebug() << "disconnected!";
        serial.close();
        if (m_connected) {
            m_connected = false;
            emit connectedChanged();
        }
    }
}
