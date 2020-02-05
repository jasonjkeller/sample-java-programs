#!/bin/bash
java -Xms64m -Xmx64m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=30s,name=Latencies,filename=latencies.jfr -Xlog:jfr=info -jar target/latencies.jar
