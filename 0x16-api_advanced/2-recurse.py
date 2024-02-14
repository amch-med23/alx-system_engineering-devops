#!/usr/bin/python3

"""a list containing the titles of all hot articles"""


def recurse(subreddit, hot_list=[]):
    """ a recursive function that queries the Reddit API and returns a list
    containing the titles of all hot articles for a given subreddit. If no
    results are found for the given subreddit, the function should return None.
    """
    import requests

    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    headers = {"User-agent": "amch-mozilla"}

    posts = requests.get(url, headers=headers, allow_redirects=False)

    if posts.status_code == 200:
        for post in posts.json()['data']['children']:
            hot_list.append(post['data']['title'])
        return hot_list
    else:
        return None
