# @TEST-EXEC: ${DIST}/aux/zeek-aux/plugin-support/init-plugin -u . Demo Foo
# @TEST-EXEC: ./configure --bro-dist=${DIST} && make
# @TEST-EXEC: ZEEK_PLUGIN_PATH=`pwd` zeek -NN Demo::Foo >>output
# @TEST-EXEC: echo === >>output
# @TEST-EXEC: ZEEK_PLUGIN_PATH=`pwd` zeek -r $TRACES/port4242.trace >>output
# @TEST-EXEC: TEST_DIFF_CANONIFIER= btest-diff output
