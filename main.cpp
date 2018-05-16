#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQuickView engine;
//    engine.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.setSource(QUrl(QStringLiteral("qrc:/TextReverse.qml")));
//    engine.setSource(QUrl(QStringLiteral("qrc:/PictureReverse.qml")));
    engine.show();

    return app.exec();
}
