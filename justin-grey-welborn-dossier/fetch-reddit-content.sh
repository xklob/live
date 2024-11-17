#!/bin/bash

# Constants
USER_AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3"
BASE_URL="https://www.reddit.com"
USERNAME="parrotfish7"

# Fetch first page of user's submitted posts
curl -s -A -L -I "$USER_AGENT" "$BASE_URL/user/$USERNAME/submitted/" > reddit_user_page.html

# Parse HTML for post titles - very basic parsing, might need adjustment based on actual page structure
grep -oP '(?<=<h3 class="_eYtD2XCVieq6emjKBH3m">)[^<]*' reddit_user_page.html

# Cleanup
rm reddit_user_page.html