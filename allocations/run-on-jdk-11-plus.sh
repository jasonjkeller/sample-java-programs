#!/bin/bash
java -Xms64m -Xmx64m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=30s,name=Allocations,filename=allocations.jfr -Xlog:jfr=info -jar target/allocations.jar
