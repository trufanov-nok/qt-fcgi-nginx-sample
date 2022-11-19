#ifndef QFCGITHREAD_H
#define QFCGITHREAD_H

#include <QThread>

class QFCGIThread : public QThread
{
    Q_OBJECT
private:
    void run();
public:
    QFCGIThread();
};

#endif // QFCGITHREAD_H
