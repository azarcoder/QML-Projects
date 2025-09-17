#pragma once
#include <QObject>
#include <QSerialPort>

class ArduinoHandler : public QObject {
    Q_OBJECT
    Q_PROPERTY(int temperature READ temperature NOTIFY dataChanged)
    Q_PROPERTY(int humidity READ humidity NOTIFY dataChanged)
    Q_PROPERTY(int pressure READ pressure NOTIFY dataChanged)
    Q_PROPERTY(bool connected READ connected NOTIFY connectedChanged)

public:
    explicit ArduinoHandler(QObject *parent = nullptr);

    bool connected() const { return m_connected; }
    int temperature() const { return m_temperature; }
    int humidity() const { return m_humidity; }
    int pressure() const { return m_pressure; }

    Q_INVOKABLE void connectArduino(const QString &portName);

signals:
    void dataChanged();
    void connectedChanged();

private slots:
    void onReadyRead();
    void handleError(QSerialPort::SerialPortError error);

private:
    QSerialPort serial;
    bool m_connected = false;
    int m_temperature = 0;
    int m_humidity = 0;
    int m_pressure = 0;
    QByteArray m_buffer;
};
