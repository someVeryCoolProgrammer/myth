"""
GPL-3.0 license only. Copyright (c) 2026 someVeryCoolProgrammer.
"""

def strcmp() -> None:
    """See if two strings are the same. Sometimes, I mis-spell words and can't figure out what I did wrong."""

    string_one = input("Enter the first string: ")
    string_two = input("Enter the second string: ")

    if string_one == string_two:
        print(f"{string_one} == {string_two}")
    else:
        print(f"{string_one} != {string_two}")

strcmp()
