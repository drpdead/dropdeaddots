from alive_progress import alive_bar
import time

def main():
    total_items = 100  # Set your total number of items here

    # Wrap your loop with an alive_bar context manager
    with alive_bar(total_items) as bar:
        for item in range(total_items):
            # Your original loop logic here
            # For demonstration purposes, we'll just sleep for a short time
            time.sleep(0.1)
            bar()  # Call `bar()` at the end of each iteration

if __name__ == "__main__":
    main()port time
import subprocess as sub
