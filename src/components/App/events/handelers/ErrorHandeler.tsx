import * as fs from 'fs';
import * as path from 'path';
import * as toml from 'toml';

// Function to read and parse the TOML file
function readTOMLFile(relativeFilePath: string): void {
    // Resolve the relative path to an absolute path
    const absoluteFilePath = path.resolve(__dirname, relativeFilePath);

    fs.readFile(absoluteFilePath, 'utf-8', (err, data) => {
        if (err) {
            console.error('Error reading file:', err);
            return;
        }
        try {
            const parsedData = toml.parse(data);
            console.log('Parsed TOML content:', parsedData);
        } catch (parseErr) {
            console.error('Error parsing TOML:', parseErr);
        }
    });
}

// Call the function with the relative path to the TOML file
readTOMLFile('../../../../config.toml');
