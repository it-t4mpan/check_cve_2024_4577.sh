*How the Script Works:*
- Input Prompt: The script prompts the user to enter a domain.
- Construct Payload: It constructs a payload that attempts to inject a command using the CGI argument injection.
- HTTP Request: The script uses curl to send a request to the specified domain with the payload.
- Check Response: The response is checked for a unique string (CVE-2024-4577-Vulnerable) to determine if the server is vulnerable.
- Output Result: The script outputs [+] Vulnerable if the server is found to be vulnerable, otherwise [-] Not Vulnerable.


*Usage:*
1. Save the script to a file, e.g., check_cve_2024_4577.sh.
2. Make the script executable: chmod +x check_cve_2024_4577.sh.
3. Run the script: ./check_cve_2024_4577.sh.
4. Enter the domain you want to check when prompted.

Disclaimer:
- Ensure you have permission to test the target server.
- Use this script responsibly and only for legitimate security testing purposes.
- The script is a basic example and may need modifications to handle various edge cases or more complex setups.

This script provides a quick way to check for the CVE-2024-4577 vulnerability, but comprehensive security assessments should always be conducted by professionals.
