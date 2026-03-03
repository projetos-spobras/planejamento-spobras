import fs from 'fs';
import path from 'path';

const files = [
    'C:/Users/x437719/.gemini/antigravity/brain/7e5feb32-a719-4757-ae89-a6058c202bbb/.system_generated/steps/636/output.txt',
    'C:/Users/x437719/.gemini/antigravity/brain/7e5feb32-a719-4757-ae89-a6058c202bbb/.system_generated/steps/642/output.txt',
    'C:/Users/x437719/.gemini/antigravity/brain/7e5feb32-a719-4757-ae89-a6058c202bbb/.system_generated/steps/643/output.txt',
    'C:/Users/x437719/.gemini/antigravity/brain/7e5feb32-a719-4757-ae89-a6058c202bbb/.system_generated/steps/644/output.txt'
];

let allData = [];

for (const f of files) {
    try {
        console.log(`Processing ${path.basename(f)}...`);
        let content = fs.readFileSync(f, 'utf8');

        // Check if content is a JSON string (starts with quote)
        if (content.trim().startsWith('"')) {
            try {
                content = JSON.parse(content);
                console.log('  - Decoded JSON string content');
            } catch (e) {
                console.error('  - Failed to parse JSON string:', e.message);
            }
        }

        // Look for the array inside untrusted-data tags
        // The pattern is: <untrusted-data-GUID> [ ... ] </untrusted-data-GUID>
        // We can just look for the first '[' after an untrusted-data tag

        const startTagIndex = content.indexOf('<untrusted-data-');
        if (startTagIndex !== -1) {
            const arrayStartIndex = content.indexOf('[', startTagIndex);
            const endTagIndex = content.lastIndexOf('</untrusted-data-');

            if (arrayStartIndex !== -1 && endTagIndex !== -1 && endTagIndex > arrayStartIndex) {
                // Find the matching closing bracket for the array
                // Since the array is invalid JSON if cut off, but we expect it to be complete
                // We can search for the last ']' before the end tag
                const arrayEndIndex = content.lastIndexOf(']', endTagIndex);

                if (arrayEndIndex !== -1) {
                    const jsonStr = content.substring(arrayStartIndex, arrayEndIndex + 1);
                    try {
                        const json = JSON.parse(jsonStr);
                        allData = allData.concat(json);
                        console.log(`  - ✅ Loaded ${json.length} rows`);
                    } catch (e) {
                        console.error('  - JSON parse error on extracted block:', e.message);
                        console.log('  - Snippet:', jsonStr.substring(0, 50));
                    }
                } else {
                    console.error('  - Could not find closing bracket');
                }
            } else {
                console.error('  - Could not find data block boundaries');
            }
        } else {
            console.error('  - No untrusted-data tag found');
        }

    } catch (err) {
        console.error(`Error reading ${f}:`, err.message);
    }
}

console.log(`Total rows loaded: ${allData.length}`);
fs.writeFileSync('existing_data.json', JSON.stringify(allData, null, 2));
console.log('Saved to existing_data.json');
