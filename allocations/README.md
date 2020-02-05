Sample to show allocations in a Java Flight Recording
=====================================================

This program checks whether a number is prime.

Run the program and also make a profiling recording.

### How to run
JDK 11+  
```bash
./run-on-jdk-11-plus.sh
```

or  

`java -Xms64m -Xmx64m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:StartFlightRecording=settings=profile,duration=30s,name=Allocations,filename=allocations.jfr -Xlog:jfr=info -jar target/allocations.jar`

Pre JDK 11  
`java -Xms64m -Xmx64m -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording=settings=profile,duration=30s,name=Allocations,filename=allocations.jfr -XX:FlightRecorderOptions=loglevel=info -jar target/allocations.jar`

### Analyzing Java Flight Recording

In Memory -> Allocation tab, you should see a high allocation rate.

Also, see Memory -> Garbage Collections tab and check the frequency of GC events.

### Improving Performance

Try the program again after changing `Long` types to primitive `long`.
