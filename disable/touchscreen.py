# Useful links
# Execute and get output terminal commands: https://stackoverflow.com/a/4408424/7195250
# Regular Expressions: https://www.tutorialspoint.com/python/python_reg_expressions.htm

# Execute command to get touchscreen device_id
import os
terminal_output = os.popen('xinput').readlines()

# Get device_id number from terminal_output
import re
for row in terminal_output:
    # Check if row contains touch informations
    pattern = '(.*)(maXTouch\sDigitizer)(.*)id=([0-9]*)\s'
    interest_string = re.match(pattern, row)

    # If True, process actual row, otherwise goes to another row of output_terminal
    if interest_string:
        # Get id from regex in row of output_terminal. Each () correspond to 1-indexed group of regex
        device_id = interest_string.group(4)
        terminal_output = os.popen(f'xinput disable {device_id}').readlines()

        # If command has any error, terminal_output returns a non empty tuple
        if terminal_output:
            print(f'(ERROR) terminal_output: {terminal_output}')

        # Stop loop after executed command to stop the touch screen
        break
