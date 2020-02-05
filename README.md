Sample Java Programs
====================

This repository contains some sample programs. All are Maven projects and can be run directly using "java -jar".

The sample apps are intended to demonstrate problematic scenarios, most of which can be diagnosed with Java Flight Recorder:
* High Object allocation rate
* Deadlocks
* High CPU usage
* Hot methods
* Latency and thread contention
* Memory leaks
* Large number of object references in heap memory
* Thread leaks

## How to build

Run `mvn clean install` to build all sample programs

## References

* [Using Java Flight Recorder](https://medium.com/@chrishantha/using-java-flight-recorder-2367c01deacf)
* [Java Flight Recorder Cheat Sheet](https://medium.com/@chrishantha/java-flight-recorder-cheat-sheet-98f5143f5f88)

## License

Copyright (C) 2015 M. Isuru Tharanga Chrishantha Perera

Licensed under the Apache License, Version 2.0
