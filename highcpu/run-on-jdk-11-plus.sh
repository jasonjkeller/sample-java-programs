#!/bin/bash
java -Xms128m -Xmx128m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=30s,name=HighCPU,filename=highcpu.jfr -Xlog:jfr=info -jar target/highcpu.jar
