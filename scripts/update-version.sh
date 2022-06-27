# Get value from GITHUB_REF_NAME
# Update package.json and package-lock.json
# Update CHANGELOG.md

# Get value from GITHUB_REF_NAME (e.g. v1.0.0)
VERSION=$(echo $GITHUB_REF_NAME | sed 's/^v//')

# Update package.json and package-lock.json
sed -i "s/\"version\": \".*\"/\"version\": \"$VERSION\"/g" package.json package-lock.json