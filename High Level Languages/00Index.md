High Level Language Programming

## Notebook programming
[Notebook programming environments](https://en.wikipedia.org/wiki/Notebook_interface) can be really handy for doing certain types of interactive or exploratory development.
Perhaps the most popular notebook programming environment today is [Jupyter](https://jupyter.org/), for Python (and several other languages).
[Wolfram Mathematica](https://www.wolfram.com/mathematica/) is another notebook programming environment that's great for doing math-oriented programming.

## Profiling tools to use to improve performance of my code?

- [print timing](/2020/debugging-profiling/#timing) - manually compute the time taken between different parts of your code. By repeatedly doing this, you can effectively do a binary search over your code and find the segment of code that took the longest. 
- Valgrind's [Callgrind](http://valgrind.org/docs/manual/cl-manual.html) - run your program and measure how long everything takes and all the call stacks, namely which function called which other function; produces an annotated version of your program's source code with the time taken per line. 
- [`perf`](http://www.brendangregg.com/perf.html) tool and other language specific sampling profilers can output useful data pretty quickly
- [Flamegraphs](http://www.brendangregg.com/flamegraphs.html) - a good visualization tool for the output of said sampling profilers. 

Sometimes the slow part of your code will be because your system is waiting for an event like a disk read or a network packet. In those cases, it is worth checking that back-of-the-envelope calculations about the theoretical speed in terms of hardware capabilities do not deviate from the actual readings. There are also specialized tools to analyze the wait times in system calls. These include tools like [eBPF](http://www.brendangregg.com/blog/2019-01-01/learn-ebpf-tracing.html) that perform kernel tracing of user programs. In particular [`bpftrace`](https://github.com/iovisor/bpftrace) is worth checking out if you need to perform this sort of low level profiling.

