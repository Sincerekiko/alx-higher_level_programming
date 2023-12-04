import sys

num_args = len(sys.argv) - 1  # Subtract 1 for the script name itself
args_list = sys.argv[1:]  # Exclude the script name from arguments

if num_args == 0:
    print("0 arguments.")
else:
    print(f"{num_args} {'argument:' if num_args == 1 else 'arguments:'}")
    for i, arg in enumerate(args_list, 1):
        print(f"{i}: {arg}")
