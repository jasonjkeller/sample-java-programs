#!/bin/bash
java -Xms1g -Xmx1g -Xlog:gc\* -Xlog:gc:gc.log -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath="/tmp/heap-dump.hprof" -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=5m,name=MemoryLeak,filename=memoryleak.jfr -Xlog:jfr=info -jar target/memoryleak.jar
