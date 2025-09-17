/****************************************************************************
** Meta object code from reading C++ file 'arduinohandler.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.12)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../arduinohandler.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'arduinohandler.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.12. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ArduinoHandler_t {
    QByteArrayData data[14];
    char stringdata0[168];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ArduinoHandler_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ArduinoHandler_t qt_meta_stringdata_ArduinoHandler = {
    {
QT_MOC_LITERAL(0, 0, 14), // "ArduinoHandler"
QT_MOC_LITERAL(1, 15, 11), // "dataChanged"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 16), // "connectedChanged"
QT_MOC_LITERAL(4, 45, 11), // "onReadyRead"
QT_MOC_LITERAL(5, 57, 11), // "handleError"
QT_MOC_LITERAL(6, 69, 28), // "QSerialPort::SerialPortError"
QT_MOC_LITERAL(7, 98, 5), // "error"
QT_MOC_LITERAL(8, 104, 14), // "connectArduino"
QT_MOC_LITERAL(9, 119, 8), // "portName"
QT_MOC_LITERAL(10, 128, 11), // "temperature"
QT_MOC_LITERAL(11, 140, 8), // "humidity"
QT_MOC_LITERAL(12, 149, 8), // "pressure"
QT_MOC_LITERAL(13, 158, 9) // "connected"

    },
    "ArduinoHandler\0dataChanged\0\0"
    "connectedChanged\0onReadyRead\0handleError\0"
    "QSerialPort::SerialPortError\0error\0"
    "connectArduino\0portName\0temperature\0"
    "humidity\0pressure\0connected"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ArduinoHandler[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       4,   48, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x06 /* Public */,
       3,    0,   40,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   41,    2, 0x08 /* Private */,
       5,    1,   42,    2, 0x08 /* Private */,

 // methods: name, argc, parameters, tag, flags
       8,    1,   45,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 6,    7,

 // methods: parameters
    QMetaType::Void, QMetaType::QString,    9,

 // properties: name, type, flags
      10, QMetaType::Int, 0x00495001,
      11, QMetaType::Int, 0x00495001,
      12, QMetaType::Int, 0x00495001,
      13, QMetaType::Bool, 0x00495001,

 // properties: notify_signal_id
       0,
       0,
       0,
       1,

       0        // eod
};

void ArduinoHandler::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ArduinoHandler *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->dataChanged(); break;
        case 1: _t->connectedChanged(); break;
        case 2: _t->onReadyRead(); break;
        case 3: _t->handleError((*reinterpret_cast< QSerialPort::SerialPortError(*)>(_a[1]))); break;
        case 4: _t->connectArduino((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (ArduinoHandler::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ArduinoHandler::dataChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (ArduinoHandler::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ArduinoHandler::connectedChanged)) {
                *result = 1;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<ArduinoHandler *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->temperature(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->humidity(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->pressure(); break;
        case 3: *reinterpret_cast< bool*>(_v) = _t->connected(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject ArduinoHandler::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_ArduinoHandler.data,
    qt_meta_data_ArduinoHandler,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ArduinoHandler::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ArduinoHandler::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ArduinoHandler.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int ArduinoHandler::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void ArduinoHandler::dataChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void ArduinoHandler::connectedChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
