import requests

# Replace with your GitHub username and personal access token
GITHUB_USERNAME = "anish7600"
GITHUB_TOKEN = "******"

# List of repositories to make private (just the names, not full URLs)
REPOSITORIES = []

headers = {
    "Accept": "application/vnd.github.v3+json",
    "Authorization": f"token {GITHUB_TOKEN}"
}

def make_repo_private(repo_name):
    url = f"https://api.github.com/repos/{GITHUB_USERNAME}/{repo_name}"
    data = {"private": False}
    response = requests.patch(url, json=data, headers=headers)
    if response.status_code == 200:
        print(f"✅ Made private: {repo_name}")
    else:
        print(f"❌ Failed to update {repo_name}: {response.status_code} - {response.text}")

for repo in REPOSITORIES:
    make_repo_private(repo)

