#![feature(plugin)]
#![plugin(rustcxx_plugin)]

#[link(name = "Qt5Core")]
#[link(name = "Qt5Gui")]
#[link(name = "Qt5Widgets")]
#[link(name = "Qt5Quick")]
#[link(name = "Qt5Qml")]
extern {}

cxx_inline! {
    #include <QGuiApplication>
    #include <QPushButton>
    #include <QQmlApplicationEngine>
    #include <QQuickWindow>
}

fn main() {
    std::process::exit( unsafe { cxx![() -> i32{
		int argc = 0;
		char arg[] = "./qtdemo";
		char * argv [] = {arg, 0};

		QGuiApplication app (argc, argv);
	    QQmlApplicationEngine engine;
	    engine.load(QUrl("simple.qml"));
	    QObject *topLevel = engine.rootObjects().value(0);
	    QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);
	    window->show();
		app.exec()
    }]});
}
