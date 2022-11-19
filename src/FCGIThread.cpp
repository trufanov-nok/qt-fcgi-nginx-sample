#include "FCGIThread.h"

#include <fcgi_stdio.h>
#include <QProcessEnvironment>

QFCGIThread::QFCGIThread()
{

}

void
QFCGIThread::run()
{
    int cnt = 0;
    while (FCGI_Accept() >= 0) {
        printf("Content-type: text/html\r\nStatus: 200 OK\r\n\r\n"
               "<b>Request no. %d!!</b>\r\n"
               "<br><i>\r\n", cnt++);

        const QStringList sl = QProcessEnvironment::systemEnvironment().toStringList();
        for(const QString& s: sl) {
            if (s.startsWith("REQUEST_URI=")) {
                printf("<b>%s</b><br>\r\n", s.toStdString().c_str());
            } else {
                printf("%s<br>\r\n", s.toStdString().c_str());
            }

        }
        printf("</i>");
    }
}
