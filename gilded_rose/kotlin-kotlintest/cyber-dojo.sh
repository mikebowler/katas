CLASSES=.:`ls /usr/share/kotlin/kotlinc/lib/*.jar | tr '\n' ':'`
CLASSES=`ls /kotlin/*.jar | tr '\n' ':'`${CLASSES}
kotlinc *.kt -include-runtime -jvm-target 12 -cp $CLASSES
if [ $? -eq 0 ]; then
  java -cp $CLASSES \
    io.kotlintest.runner.console.LauncherKt \
    --writer basic \
    --spec com.gildedrose.GildedRoseTest  # [X]
fi

