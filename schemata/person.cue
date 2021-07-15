{
	_schema: {
		name:      "Person"
		namespace: "rawkode.academy"
	}

	#Person: {
		_dataset: {
			plural: "people"
			supportedExtensions: ["md"]
		}

    name:   string
		body?:  string
		social_accounts?: [...#TwitterAccount | #GitHubAccount | #MiscellaneousAccount]
	}

	#TwitterAccount: {
		network:  "twitter"
		username: string
		url:      *"https://twitter.com/\(username)" | string
	}

	#GitHubAccount: {
		network:  "github"
		username: string
		url:      *"https://github.com/\(username)" | string
	}

	#MiscellaneousAccount: {
		network: string
		url:     string
	}
}
