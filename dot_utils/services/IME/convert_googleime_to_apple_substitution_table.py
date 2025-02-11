# Convert GoogleInputs.txt (Google Japanese Input dictionary) to Apple Japanese Text Substitutions plist.

import plistlib
def convert_to_plist(input_file, output_file):
    """Converts a Google Japanese Input dictionary to Apple Text Substitutions plist.

    Args:
        input_file (str): Path to the input dictionary file.
        output_file (str): Path to the output plist file.
    """

    entries = []
    with open(input_file, 'r', encoding='utf-8') as f:
        for line in f:
            # Split entries by tab character
            shortcut, phrase, _ = line.strip().split('\t') 

            entries.append({
                'phrase': phrase,
                'shortcut': shortcut
            })

    # Create the plist structure
    plist = entries

    # Write as an XML plist file
    with open(output_file, 'wb') as f:
        plistlib.dump(plist, f)


# Example usage
input_file = 'GoogleInputs.txt'
output_file = 'apple_text_substitutions.plist'
convert_to_plist(input_file, output_file)

