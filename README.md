# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog describes circuits by explicitly connecting logic gates and components. While you can technically build a latch structurally, this is not practical or recommended because it makes the design complex, error-prone, and less portable.
Instead, behavioral Verilog allows you to describe the intended latch behavior more clearly and lets synthesis tools infer the appropriate hardware automatically. Structural design is usually reserved for small gate-level examples, not for scalable memory elements like latches or flip-flops.
 

### What is the meaning of always @(*) in a sensitivity block?
It means that the block is sensitive to all signals read within it — that is, the block will automatically re-evaluate whenever any input signal it depends on changes.
 This form is used for combinational logic to ensure that the output updates correctly whenever an input changes, without needing to manually list every signal in the sensitivity list.
### What importance is memory to digital circuits?
Memory is essential in digital circuits because it allows the circuit to store and recall information over time.
 Without memory, a circuit can only respond to its current inputs (combinational logic). With memory elements like latches, flip-flops, and registers, digital systems can:
Remember past inputs or states,


Perform sequential operations,


Implement counters, processors, and state machines,


And maintain data between clock cycles.


In short, memory enables sequential logic and makes complex digital systems—like computers and controllers—possible.
