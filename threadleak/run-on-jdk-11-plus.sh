#!/bin/bash
java -Xmx1g -Xmx1g -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=2m,name=ThreadLeak,filename=threadleak.jfr -Xlog:jfr=info -jar target/threadleak.jar
