greaterThan(QT_MAJOR_VERSION, 4) {
    load(qt_parts)
} else {
    TEMPLATE = subdirs

    SUBDIRS = src examples

    examples.depends = src

    unix:!NO_UNIT_TESTS: {
        SUBDIRS += tests
        tests.depends = src
    }
}
