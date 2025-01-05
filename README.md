# Shell Script Bug: Silent File Processing Errors

This repository demonstrates a subtle bug in a shell script that silently ignores errors when processing files in a directory.  The script iterates through files, but if a file is deleted during the loop's execution, the script does not report an error and continues processing. This can lead to unexpected behavior and hard-to-debug issues.

## Bug Description

The primary issue lies within the `for` loop. It does not handle the case where a file is removed while the loop is in progress.  This results in the script attempting to process a non-existent file, which often leads to the script silently failing without any indication of an error.

## Solution

The solution involves adding a check before processing each file to ensure that the file still exists.  This check prevents the script from attempting to process files that have been deleted.

## How to Reproduce

1.  Clone this repository.
2.  Run the `bug.sh` script.  While the script is running, manually delete one of the files in the specified directory.
3.  Observe that the script continues without error, and the deleted file is not mentioned.
4.  Run `bugSolution.sh` for a corrected version.
