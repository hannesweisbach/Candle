// This file is a part of "CocoanutCNC" application.
// Copyright 2015-2016 Hayrullin Denis Ravilevich

#include <QApplication>
#include <QDebug>
#include <QLocale>
#include <QTranslator>
#include <QFile>

#include "Controller/MainFormController.h"

void initLocales(QApplication &a)
{
    QString loc = QLocale().name().left(2);
    QString translationsFolder = qApp->applicationDirPath() + "/Translations/";
    QString translationFileName = translationsFolder + qApp->applicationDisplayName() + "_" + loc + ".qm";

    qDebug() << "Main: locale = " << loc;

    if(QFile::exists(translationFileName))
    {
        QTranslator* translator = new QTranslator();
        if (translator->load(translationFileName)) a.installTranslator(translator); else delete translator;
    }

    QString baseTranslationFileName = translationsFolder + "qt_" + loc + ".qm";

    if(QFile::exists(translationFileName))
    {
        QTranslator* baseTranslator = new QTranslator();
        if (baseTranslator->load(baseTranslationFileName)) a.installTranslator(baseTranslator); else delete baseTranslator;
    }
}

void initGL()
{
    QGLFormat glf = QGLFormat::defaultFormat();
    glf.setSampleBuffers(true);
    glf.setSamples(8);
    QGLFormat::setDefaultFormat(glf);
}

int main(int argc, char *argv[])
{
    QCoreApplication::setOrganizationName("octronic");
    QCoreApplication::setOrganizationDomain("octronic.co.uk");
    QCoreApplication::setApplicationName("CocoanutCNC");

    QApplication a(argc, argv);
    a.setApplicationVersion(APP_VERSION);
    initGL();
    initLocales(a);
    MainFormController w;
    w.showMainWindow();
    return a.exec();
}
