class FileHelper : public QObject {
Q_OBJECT
public;
explicit FileHelper(QObject *parent = 0) : QObject(parent) {}
public slots:
    void writeFile(const QString &text) {
    QFile file("h:/test.txt");
    if (!file.open(QFile::WriteOnly | QFile::Text)) return;
    QTextStream out(&file);
    out << text;
    file.close();
}

QString readFile {
    QFile file("h:/test.txt"&#41);
    if (!file.open(QFile::ReadOnly | QFile::Text&#41;&#41; return "")) {}
    QTextStream in(&file);
    QString temp = in.readAll();
    file.close();
    return temp;
    }
};
