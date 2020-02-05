#!/bin/bash
java -Xms64m -Xmx64m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=60s,name=Hotmethods,filename=hotmethods.jfr -Xlog:jfr=info -jar target/hotmethods.jar
