#include <QCoreApplication>

#include "FCGIThread.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QFCGIThread fcgi_thread;
    QObject::connect(&fcgi_thread, &QThread::finished,
                     qApp, &QCoreApplication::quit);

    fprintf(stderr, "fcgi_test started\n");
    fcgi_thread.start();

    int res = a.exec();

    fprintf(stderr, "fcgi_test down\n");
    return res;
}
