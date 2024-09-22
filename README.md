# 4-Digit BCD Counter in Verilog

## Description
This repository contains a Verilog implementation of a 4-digit Binary-Coded Decimal (BCD) counter. Each decimal digit is represented using 4 bits, and the counter can count from 0 to 9999. The design includes synchronous reset functionality and enable signals for each digit, ensuring correct increment behavior across multiple BCD counters.

## Features
- **4-Digit Counter**: Counts from 0 to 9999, with each digit encoded in BCD format.
- **Synchronous Reset**: Resets the counter to 0 when the reset signal is active.
- **Enable Signals**: Manage when each digit should increment based on the value of the lower digits.
- **Modular Design**: Uses a separate BCD counter module for each digit for clear and maintainable code.

## Files
- **top_module**: Main module implementing the 4-digit BCD counter.
- **bcd module**: BCD counter module that counts from 0 to 9.

## How to Use
1. Clone the repository to your local machine.
2. Use a Verilog simulator (such as ModelSim, Vivado, etc.) to simulate the counter.
3. Modify the parameters or extend the design as needed for your applications.

## Contributing
Feel free to submit issues or pull requests for improvements, bug fixes, or additional features.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
